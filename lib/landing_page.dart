import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  LandingPageState createState() => LandingPageState();
}

class LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
      ),
      body: Center(child: Image.asset('assets/landingpage.png'))
    ),
   );
  }
}

 // child: Image.asset(
        //   'assets/image.png', 
        //   width: 200,         
        //   height: 200,       
        //   fit: BoxFit.cover,  
        // ),
