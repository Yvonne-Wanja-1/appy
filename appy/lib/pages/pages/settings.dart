import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _notificationsEnabled = true; // Initial state of the switch

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
 Padding(
  padding: const EdgeInsets.only(left: 12.0, right: 23.0),
  child: Row(
    crossAxisAlignment: CrossAxisAlignment.start, // Align items to the top
    children: [
      Expanded( // Wrap the Text widget with Expanded in order to use the remaining space
        child: Text('''Enable or disable push notifications for important updates, alerts and events''',
          style: TextStyle(
            fontSize: 14,
            color: Colors.blue,
          ),
        ),
      ),
      SizedBox(width: 16), // Add some spacing between text and switch
      // Switch widget for toggling notifications
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Switch(
                  value: _notificationsEnabled, // Use the state variable
                  onChanged: (value) {
                    setState(() {
                      _notificationsEnabled = value; // Update the state
                    });
                  },
                  activeColor: Colors.blue, // Color when switch is on
                  inactiveThumbColor: Colors.grey, // Color of the thumb when off
                  inactiveTrackColor: Colors.grey.shade300, // Color of the track when off
                ),
              ),
    ],
  ),
),






SizedBox(height: 24,),
Padding(
      padding: const EdgeInsets.only(left:12),
      child: Text('Apperance 🌗', 
      style: TextStyle(fontSize: 22, 
      fontWeight: FontWeight.bold,
      color: Colors.black), 
      //textAlign: TextAlign.center,
       ),
    ),
              
    SizedBox(height: 10),

Padding(
  padding: const EdgeInsets.only(left:12),
  child: Text('App Theme:', 
  style: TextStyle(fontSize: 16, 
 // fontWeight: FontWeight.bold,
 fontStyle: FontStyle.italic,
   color:  Colors.grey.shade700),
  ), 
   //textAlign: TextAlign.center,
   ),
          

 SizedBox(height: 16,),
 Padding(
  padding: const EdgeInsets.only(left: 12.0, right: 23.0),
  child: Row(
    crossAxisAlignment: CrossAxisAlignment.start, // Align items to the top
    children: [
      Expanded( // Wrap the Text widget with Expanded in order to use the remaining space
        child: Text('''Choose between Light and Dark mode for the app''',
          style: TextStyle(
            fontSize: 14,
            color: Colors.blue,
          ),
        ),
      ),
      SizedBox(width: 16), // Add some spacing between text and switch
      // Switch widget for toggling notifications
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Switch(
                  value: _notificationsEnabled, // Use the state variable
                  onChanged: (value) {
                    setState(() {
                      _notificationsEnabled = value; // Update the state
                    });
                  },
                  activeColor: Colors.blue, // Color when switch is on
                  inactiveThumbColor: Colors.grey, // Color of the thumb when off
                  inactiveTrackColor: Colors.grey.shade300, // Color of the track when off
                ),
              ),
    ],
  ),
),


SizedBox(height: 24,),
    Padding(
      padding: const EdgeInsets.only(left:12),
      child: Text('Account 🔐', 
      style: TextStyle(fontSize: 22, 
      fontWeight: FontWeight.bold,
      color: Colors.black), 
      //textAlign: TextAlign.center,
       ),
    ),

    SizedBox(height: 10),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left:12.0),
          child: Text('Manage Account:',
            style: TextStyle(fontSize: 20,
          //  fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            color: Colors.blue),
          ),
        ),
        IconButton(
          icon: Icon(Icons.chevron_right, 
          size: 60,
          color: Colors.blue),
          onPressed: () {
            // Navigate to account management page
            Navigator.pushNamed(context, '/account_management');
          },
        ),
      ]
        
        )



          ],
        )
        
      ),
    );
  }
}