import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart'; // 👈 this is the magic file with all the keys

import 'widgets/splash_screen.dart';
import 'pages/auth/signin_page.dart';
import 'pages/auth/get_started_page.dart';
import 'package:elim_trust_2/pages/pages/albert.dart';
import 'package:elim_trust_2/pages/pages/blogs.dart';
import 'package:elim_trust_2/pages/pages/capacity.dart';
import 'package:elim_trust_2/pages/pages/changepassword.dart';
import 'package:elim_trust_2/pages/pages/communitypage.dart';
import 'package:elim_trust_2/pages/pages/contact.dart';
import 'package:elim_trust_2/pages/pages/donations.dart';
import 'package:elim_trust_2/pages/pages/editinfo.dart';
import 'package:elim_trust_2/pages/pages/faqs.dart';
import 'package:elim_trust_2/pages/pages/feedback.dart';
import 'package:elim_trust_2/pages/pages/gallery.dart';
import 'package:elim_trust_2/pages/pages/homepage.dart';
import 'package:elim_trust_2/pages/pages/jane.dart';
import 'package:elim_trust_2/pages/pages/latestnews.dart';
import 'package:elim_trust_2/pages/pages/manageaccount.dart';
import 'package:elim_trust_2/pages/pages/mats.dart';
import 'package:elim_trust_2/pages/pages/pastor.dart';
import 'package:elim_trust_2/pages/pages/profilepage.dart';
import 'package:elim_trust_2/pages/pages/projects.dart';
import 'package:elim_trust_2/pages/pages/readmoreblogs.dart';
import 'package:elim_trust_2/pages/pages/readmorelatestnews.dart';
import 'package:elim_trust_2/pages/pages/secondreadmoreblogs.dart';
import 'package:elim_trust_2/pages/pages/settings.dart';

import 'package:elim_trust_2/pages/pages/story.dart';
import 'package:elim_trust_2/pages/pages/vunja.dart';
import 'package:elim_trust_2/pages/pages/yprep.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // 👈 must-have
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ); // 👈 This connects to your Firebase project

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Elim Trust Org',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: const SplashScreen(
        child: SignInPage(),
      ),
      routes: {
        '/signin': (context) => const SignInPage(),
        '/get-started': (context) => const GetStartedPage(),
        '/home': (context) => const HomePage(),
        '/projects': (context) => const ProjectsPage(),
        '/donations': (context) => const DonationsPage(),
        '/community': (context) => const CommunityPage(),
        '/profile': (context) => const ProfilePage(),
        '/yprep': (context) => const YprepPage(),
        '/matsdialogue': (context) => const MatsDialoguePage(),
        '/vunja': (context) => const VunjaPage(),
        '/capacity': (context) => const CapacityPage(),
        '/latestnews': (context) => const LatestnewsPage(),
        '/blogs': (context) => const BlogsPage(),
        '/gallery': (context) => const GalleryPage(),
        '/contact': (context) => const ContactPage(), 
        '/editinfo': (context) => const EditInfo(),
        '/story': (context) => const StoryPage(),
        '/settings': (context) => const SettingsPage(),
        '/feedback': (context) => const FeedbackPage(),
        '/faqs': (context) => const FaqsPage(),
        '/change_password': (context) => const PasswordPage(),
        '/manage_account': (context) => const ManageAccountPage(),
        '/readmorelatestnews': (context) => const Readmorelatestnews(),
        '/readmoreblogs': (context) => const Readmoreblogs(),
        '/secondreadmoreblogs': (context) => const SecondReadmoreblogs(),
        '/albert': (context) => const AlbertPage(),
        '/pastor': (context) => const PastorPage(),
        '/jane': (context) => const JanePage(),
      },
    );
  }
}
