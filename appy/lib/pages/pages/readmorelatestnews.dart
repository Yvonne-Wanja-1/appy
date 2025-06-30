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


Align(
  alignment: Alignment.centerLeft,
  child: Padding(
    padding: const EdgeInsets.all(8.0),
  child: Text('💡 What is Mental Health?',
  style: TextStyle(
    color: Colors.black,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  ),
  ),
),
),

Padding(
  padding: const EdgeInsets.all(10.0),
  child: Text('''Mental health refers to our emotional, psychological, and social well-being. It influences how we think, feel, and act — and how we handle stress, relate to others, and make choices. Good mental health does not mean we are happy all the time, but that we have the strength and support to cope with life’s ups and downs.''',
  style: TextStyle(
    color: Colors.black,
    fontSize: 15,
  ),
  ),
),








Align(
  alignment: Alignment.centerLeft,
  child: Padding(
    padding: const EdgeInsets.all(8.0),
  child: Text('🚩 Why Mental Health Awareness Matters',
  style: TextStyle(
    color: Colors.black,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  ),
  ),
),
),

Padding(
  padding: const EdgeInsets.all(10.0),
  child: Text('''1 in 4 people will experience a mental health issue at some point in their lives.

Untreated mental health conditions can affect education, employment, relationships, and physical health.

Stigma and lack of information stop many people from seeking the help they need.

By raising awareness, we can break these barriers and create a community that cares.''',
  style: TextStyle(
    color: Colors.black,
    fontSize: 15,
  ),
  ),
),




Align(
  alignment: Alignment.centerLeft,
  child: Padding(
    padding: const EdgeInsets.all(8.0),
  child: Text('🧠 Common Mental Health Challenges',
  style: TextStyle(
    color: Colors.black,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  ),
  ),
),
),

Padding(
  padding: const EdgeInsets.all(10.0),
  child: Text('''Depression: Persistent sadness, loss of interest in activities, feelings of worthlessness.

Anxiety: Constant worry, fear, restlessness, and difficulty concentrating.

Stress: Feeling overwhelmed or unable to cope with pressure.

Trauma-related issues: Emotional wounds from past events that affect present well-being.''',
  style: TextStyle(
    color: Colors.black,
    fontSize: 15,
  ),
  ),
),



Align(
  alignment: Alignment.centerLeft,
  child: Padding(
    padding: const EdgeInsets.all(8.0),
  child: Text('🤝 How We Can Support Each Other',
  style: TextStyle(
    color: Colors.black,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  ),
  ),
),
),

Padding(
  padding: const EdgeInsets.all(10.0),
  child: Text('''✅ Listen without judgment — Sometimes, a listening ear is the best help.
✅ Encourage seeking help — Let’s normalize visiting a counselor or mental health professional.
✅ Be kind — Small acts of kindness can make a big difference to someone struggling.
✅ Educate yourself and others — The more we know, the better we can support.''',
  style: TextStyle(
    color: Colors.black,
    fontSize: 15,
  ),
  ),
),


SizedBox(height: 20),



    ],
    
),
),
    );
  }
}