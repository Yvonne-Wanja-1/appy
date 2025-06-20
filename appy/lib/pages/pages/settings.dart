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
              children: [
                 Padding(
                   padding: const EdgeInsets.only(left: 15.0, top: 16.0),
                   child: Container(
                        //margin: const EdgeInsets.only(left: 8.0), // Reduced margin to fit AppBar's leading area
                         height: 30, // Adjusted for a more standard icon button size
                         width: 30,  // Adjusted for a more standard icon button size
                        decoration: BoxDecoration(
                          color: Colors.blue, // Optional: Added a background color
                          
                          borderRadius: BorderRadius.circular(30), // Make it circular (half of height/width)
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.red,
                              blurRadius: 5.0,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child: IconButton(
                          padding: EdgeInsets.zero, // Remove default IconButton padding for better control
                          icon: const Icon(Icons.arrow_back, color: Colors.white, size: 24), // Standard icon size
                          onPressed: () {
                            //take to the donation page
                            //Navigator.pushNamed(context, '/donations'); // Corrected route
                            Navigator.pop(context); // Go back to the previous page
                          },
                        ),
                      ),

                 ),

                const Expanded( // 1. Wrap with Expanded
                  child: Center(
                   // padding: EdgeInsets.only(left: 8.0, top: 16.0),
                    child: Text(
                      'Settings 🛠️',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
                const SizedBox( // 2. Add SizedBox to balance the leading widget
                  width: 30.0 + 15.0, // Width of back button container + left padding
                ),

                
              ],
            ),

SizedBox(height: 24,),

    Padding(
      padding: const EdgeInsets.only(left:12),
      child: Text('Notifications 🔔', 
      style: TextStyle(fontSize: 22, 
      fontWeight: FontWeight.bold,
      color: Colors.black), 
      //textAlign: TextAlign.center,
       ),
    ),
              
    SizedBox(height: 10),

Padding(
  padding: const EdgeInsets.only(left:12),
  child: Text('Push Notifications:', 
  style: TextStyle(fontSize: 16, 
 // fontWeight: FontWeight.bold,
 fontStyle: FontStyle.italic,
   color:  Colors.grey.shade700),
  ), 
   //textAlign: TextAlign.center,
   ),
          

SizedBox(height: 16,),





          ],
        )
        
      ),
    );
  }
}