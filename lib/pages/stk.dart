import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class STKPushPage extends StatefulWidget {
  final String? initialAmount;
  const STKPushPage({super.key, this.initialAmount});

  @override
  State<STKPushPage> createState() => _STKPushPageState();
}

class _STKPushPageState extends State<STKPushPage> {
  final _phoneController = TextEditingController();
  final _amountController = TextEditingController();
  bool _isLoading = false;
  String _statusMessage = '';

  @override
  void initState() {
    super.initState();
    if (widget.initialAmount != null && widget.initialAmount!.isNotEmpty) {
      _amountController.text = widget.initialAmount!;
    }
  }

  @override
  void dispose() {
    _phoneController.dispose();
    _amountController.dispose();
    super.dispose();
  }

  Future<void> sendSTKPush() async {
    final phone = _phoneController.text.trim();
    final amount = _amountController.text.trim();

    if (phone.isEmpty || amount.isEmpty) {
      setState(() {
        _statusMessage = "Phone and amount are required!";
      });
      return;
    }

    setState(() {
      _isLoading = true;
      _statusMessage = '';
    });

    try {
      final response = await http.post(
        Uri.parse('http:// 192.168.56.1:5000/api/stk-push'), // 👈 use 10.0.2.2 for Android emulator, or localhost for real device via ngrok
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'phone': phone, 'amount': int.parse(amount)}),
      );

      if (response.statusCode == 200) {
        setState(() {
          _statusMessage = "STK Push Sent ✅ Check your phone!";
        });
      } else {
        setState(() {
          _statusMessage = "❌ Failed to send STK push: ${response.body}";
        });
      }
    } catch (e) {
      setState(() {
        _statusMessage = "⚠️ Error: $e";
      });
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Donate via M-Pesa")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: _phoneController,
              keyboardType: TextInputType.phone,
              decoration: const InputDecoration(
                labelText: 'Phone Number (e.g. 2547XXXXXXXX)',
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _amountController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Amount (KES)',
              ),
            ),
            const SizedBox(height: 20),
            _isLoading
                ? const CircularProgressIndicator()
                : ElevatedButton(
                    onPressed: sendSTKPush,
                    child: const Text("Donate Now"),
                  ),
            const SizedBox(height: 20),
            Text(
              _statusMessage,
              style: TextStyle(color: Colors.blueGrey),
            ),
          ],
        ),
      ),
    );
  }
}
