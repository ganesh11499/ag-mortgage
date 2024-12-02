// import 'dart:async';
// import 'package:flutter/material.dart';

// import 'package:ag_mortgage/landing_page.dart';
// import 'package:ag_mortgage/loading_page.dart';
// import 'package:ag_mortgage/stepone_page.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: LandingPageWithDelay(),
//     );
//   }
// }

// class LandingPageWithDelay extends StatefulWidget {
//   const LandingPageWithDelay({super.key});

//   @override
//   State<LandingPageWithDelay> createState() => _LandingPageWithDelayState();
// }

// class _LandingPageWithDelayState extends State<LandingPageWithDelay> {
//   Widget currentPage = const LandingPage(); // Start with the Landing Page

//   @override
//   void initState() {
//     super.initState();
//     _startNavigationSequence();
//   }

//   Future<void> _startNavigationSequence() async {
//     // Show Landing Page for 3 seconds
//     await Future.delayed(const Duration(seconds: 2));
//     if (mounted) {
//       setState(() {
//         currentPage = const LoadingPage();
//       });
//     }

//     // Show Loading Page for 2 seconds
//     await Future.delayed(const Duration(seconds: 1));
//     if (mounted) {
//       setState(() {
//         currentPage = const SteponePage();
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: currentPage, 
//     );
//   }
// }


import 'dart:async';
import 'package:ag_mortgage/otpauth_page.dart';
import 'package:ag_mortgage/paaswordscreen.dart';
import 'package:ag_mortgage/register_page.dart';
import 'package:ag_mortgage/stepfour_page.dart';
import 'package:ag_mortgage/stepthree_page.dart';
import 'package:ag_mortgage/steptwo_page.dart';
import 'package:ag_mortgage/termsandconditions_page.dart';
import 'package:flutter/material.dart';

import 'package:ag_mortgage/landing_page.dart';
import 'package:ag_mortgage/loading_page.dart';
import 'package:ag_mortgage/stepone_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/', // Define the initial route
      routes: {
        '/': (context) => const LandingPageWithDelay(),
        '/loadingPage': (context) => const LoadingPage(),
        '/stepOnePage': (context) => const SteponePage(),
        '/stepTwoPage': (context) => const SteptwoPage(),
        '/stepThreePage': (context) => const StepthreePage(),
        '/stepFourPage': (context) => const StepfourPage(),
        '/termsConditionsPage': (context) => const TermsandconditionsPage(),
        '/registerPage': (context) =>const  RegisterPage(),
        '/otpAuthPage' : (context) => const OtpauthPage(),
        '/passwordPage': (context) => const Paaswordscreen(),
      },
    );
  }
}

class LandingPageWithDelay extends StatefulWidget {
  const LandingPageWithDelay({super.key});

  @override
  State<LandingPageWithDelay> createState() => _LandingPageWithDelayState();
}

class _LandingPageWithDelayState extends State<LandingPageWithDelay> {
  Widget currentPage = const LandingPage(); // Start with the Landing Page

  @override
  void initState() {
    super.initState();
    _startNavigationSequence();
  }

  Future<void> _startNavigationSequence() async {
    // Show Landing Page for 2 seconds
    await Future.delayed(const Duration(seconds: 2));
    if (mounted) {
      setState(() {
        currentPage = const LoadingPage();
      });
    }

    // Show Loading Page for 1 second
    await Future.delayed(const Duration(seconds: 1));
    if (mounted) {
      setState(() {
        currentPage = const SteponePage();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentPage,
    );
  }
}

