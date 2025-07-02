import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Readmoreblogs extends StatelessWidget {
  const Readmoreblogs ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Story',
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
            // Padding(
            //   padding: const EdgeInsets.all(10.0),
            //   child: Text(
            //     '''🌱 Prioritizing Mental Health: A Call for Awareness and Action''',
            //     style: TextStyle(
            //       color: Colors.black,
            //       fontSize: 25,
            //       fontWeight: FontWeight.bold,
            //     ),
            //   ),
            // ),
            Text(
              'By:  Yvonne Wanja - Published on August 3,2024',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
              ),
            ),
            SizedBox(height: 20,),
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Padding(
                padding: const EdgeInsets.all(0),
                child: (Image.asset('images/testimony2.jpg')),
              ),
            ),
  
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                '''I remember stumbling upon Elim Trust Blogs during one of the most challenging periods of my life. I was searching for comfort, guidance, and a sense of hope — and that’s exactly what I found. Every post spoke directly to my heart, reminding me that I am not alone in my struggles. The stories of resilience, the practical tips for mental wellness, and the encouragement to keep going gave me the strength I needed.

Elim Trust has not only inspired me but also equipped me with tools to care for my mental health. I am truly grateful for this platform — it continues to be a light in my journey, and I would encourage anyone feeling overwhelmed to visit their blog. It might just change your life the way it changed mine.''',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
            ),
           
        // ...existing code...
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center, // Center the row
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // TODO: Implement share functionality
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    elevation: 2,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        'images/share.png',
                        height: 20,
                        width: 20,
                        color: Colors.blue,
                      ),
                      const SizedBox(width: 8),
                      const Text(
                        'Share',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
          SizedBox(width: 70,),
                IconButton(
                  onPressed: () {
                    // TODO: Implement favorite functionality
                  },
                  icon: const Icon(
                    Icons.favorite,
                    color: Colors.red,
                    size: 24,
                  ),
                ),
                 SizedBox(width: 70,),
                ElevatedButton(
                  onPressed: () {
                    // TODO: Implement donate functionality
                  },
                  child: const Text(
                    'Donate',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
// ...existing code...
            SizedBox(height: 34),
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 150, // You can adjust this value to your desired height
        child: Card(
          elevation: 5,
          margin: const EdgeInsets.all(8.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisSize: MainAxisSize
                .min, // This is fine, SizedBox will control the outer height
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 3.0), // Adjusted padding
                child: Text(
                  'Live. Love. Live.',
                  style: GoogleFonts.dancingScript(
                    textStyle: const TextStyle(
                      fontSize: 16, // Slightly increased font size
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const Divider(
                color: Colors.blue,
                thickness: 1,
                indent: 16, // Padding on the left
                endIndent: 16,
              ),

              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 4),
                    child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(50),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.red,
                              blurRadius: 5.0,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child: const Icon(Icons.phone, color: Colors.white)),
                  ),
                  const SizedBox(width: 4), // Spacing between icon a nd text
                  const Text('+254 705 558 885', // Made const
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      )),
                  const Spacer(), // Spacing between phone and email
                  Padding(
                    padding: const EdgeInsets.only(right: 4),
                    child: MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () async {
                          const String emailAddress = 'info@elim-trust.org';
                          final Uri emailLaunchUri = Uri(
                            scheme: 'mailto',
                            path: emailAddress,
                            // You can also pre-fill subject and body if needed:
                            // queryParameters: {
                            //   'subject': 'Inquiry from App User',
                            //   'body': 'Hello Elim Trust,\n\nI have a question...'
                            // }
                          );

                          if (!await launchUrl(emailLaunchUri)) {
                            print('Could not launch $emailLaunchUri');
                            if (context.mounted) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text(
                                      'Could not open email app for $emailAddress. Please ensure an email app is configured.'),
                                ),
                              );
                            }
                          }
                        },
                        child: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(50),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.red,
                                  blurRadius: 5.0,
                                  offset: Offset(0, 2),
                                ),
                              ],
                            ),
                            child: const Icon(Icons.email_rounded,
                                color: Colors.white)),
                      ),
                    ),
                  ),
                  const SizedBox(width: 4), // Spacing between icon and text
                  const Padding(
                    // Made const
                    padding: EdgeInsets.only(right: 20),
                    child: Text(
                      'info@elim-trust.org',
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),

              // FloatingActionButton(

              //               onPressed: () {
              //                 // Add functionality for the WhatsApp button here
              //               },
              const SizedBox(height: 10), // Spacing between rows
              Row(
                mainAxisAlignment: MainAxisAlignment
                    .center, // Changed to spaceEvenly for better distribution
                children: [
                  IconButton(
                    icon: const Icon(FontAwesomeIcons.linkedin,
                        color: Colors.blue),
                    onPressed: () async {
                      // Replace with your LinkedIn URL
                      final Uri url = Uri.parse(
                          'https://www.linkedin.com/in/elim-trust-org/?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=ios_app');
                      if (!await launchUrl(url)) {
                        print('Could not launch $url');
                      }
                    },
                  ),
                  IconButton(
                    icon: const Icon(FontAwesomeIcons.instagram,
                        color: Colors.blue),
                    onPressed: () async {
                      // Replace with your Instagram URL
                      final Uri url = Uri.parse(
                          'https://www.instagram.com/elimtrustorg?igsh=d2Q5djF1OGdmODJz&utm_source=qr');
                      if (!await launchUrl(url)) {
                        print('Could not launch $url');
                      }
                    },
                  ),
                  IconButton(
                    icon: const Icon(FontAwesomeIcons.xTwitter,
                        color: Colors.blue),
                    onPressed: () async {
                      final Uri url =
                          Uri.parse('https://x.com/elim_trust_org?s=21');
                      if (!await launchUrl(url,
                          mode: LaunchMode.externalApplication)) {
                        // Optionally show a snackbar or dialog to the user
                        print('Could not launch $url');
                        if (context.mounted) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                                content: Text('Could not open link: $url')),
                          );
                        }
                      }
                    },
                  ),
                  IconButton(
                    icon: const Icon(FontAwesomeIcons.whatsapp,
                        color: Colors.blue),
                    onPressed: () async {
                      // Example: Launch WhatsApp (replace with your specific link or number)
                      // For a specific number: 'https://wa.me/1XXXXXXXXXX' (international format)
                      // Or a general link: 'https://whatsapp.com/'
                      const String whatsappNumber =
                          '254705558885'; // Elim Trust WhatsApp number
                      final Uri url =
                          Uri.parse('https://wa.me/$whatsappNumber');
                      if (!await launchUrl(url,
                          mode: LaunchMode.externalApplication)) {
                        print('Could not launch $url');
                        if (context.mounted) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text(
                                    'Could not open WhatsApp for $whatsappNumber. Please ensure WhatsApp is installed.')),
                          );
                        }
                      }
                    },
                  ),
                  IconButton(
                    icon: const Icon(FontAwesomeIcons.facebook,
                        color: Colors.blue),
                    onPressed: () async {
                      // Replace with your Facebook page URL
                      final Uri url =
                          Uri.parse('https://www.facebook.com/ElimTrustOrg/');
                      if (!await launchUrl(url,
                          mode: LaunchMode.externalApplication)) {
                        print('Could not launch $url');
                        if (context.mounted) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                                content: Text('Could not open Facebook: $url')),
                          );
                        }
                      }
                    },
                  ),
                  IconButton(
                    icon: const Icon(FontAwesomeIcons.locationDot,
                        color: Colors.red),
                    onPressed: () async {
                      // Example: Open Google Maps with a specific location
                      // You can use a query string for a place name or coordinates
                      final Uri url = Uri.parse(
                          'https://maps.google.com/?q=Elim+Trust+Nairobi'); // Example query
                      if (!await launchUrl(url,
                          mode: LaunchMode.externalApplication)) {
                        print('Could not launch $url');
                        // Add SnackBar for error if needed
                      }
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),






           floatingActionButton: FloatingActionButton(
          onPressed: () async {
            // Direct WhatsApp link to Elim Trust
            const String whatsappNumber =
                '254705558885'; // Elim Trust WhatsApp number
            final Uri url = Uri.parse('https://wa.me/$whatsappNumber');
            if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                    content: Text(
                        'Could not open WhatsApp for $whatsappNumber. Please ensure WhatsApp is installed.')),
              );
              print('Could not launch $url');
            }
          },
          backgroundColor: Colors.green,
          tooltip: 'Chat on WhatsApp', // WhatsApp-like color
          child: const Icon(FontAwesomeIcons.whatsapp, color: Colors.white),
        ),
    );
  }
}
