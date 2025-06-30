import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Readmorelatestnews extends StatelessWidget {
  const Readmorelatestnews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Blog Post',
        style: GoogleFonts.dancingScript(
          color: Colors.blue,
          fontSize: 25,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          letterSpacing: 2,
        ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,

        leading: Container(
                margin: const EdgeInsets.all(10),
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.red,
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),

                child: Center(
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back),
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
      ),

body: SingleChildScrollView(
  scrollDirection: Axis.vertical,
  physics: const BouncingScrollPhysics(),
child: Column(
  children: [
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: Text('''🌱 Prioritizing Mental Health: A Call for Awareness and Action''',
      style: TextStyle(
        color: Colors.black,
        fontSize: 25,
        fontWeight: FontWeight.bold,
        
      
      
      ),
      ),
    ),


    Text('By Sarah Johnson - Published on January 15,2025',
    style: TextStyle(
      color: Colors.black,
      fontSize: 15,
      ),
    ),


    ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ( Image.asset('images/blogsmental.jpg')),
      ),
    ),




    ],
    
),
),
    );
  }
}