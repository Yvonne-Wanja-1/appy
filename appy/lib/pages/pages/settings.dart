import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body:ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Row( // Added children property
              children: [],
            )
          ],
        )
        
      ),
    );
  }
}