import 'package:flutter/material.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  LoadingPageState createState() => LoadingPageState();
}

class LoadingPageState extends State<LoadingPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween, // Align items with space between
          children: [
            // Centered image
            Expanded(
              child: Center(
                child: Image.asset('assets/landingpage.png'),
              ),
            ),

            // Loading image at the bottom
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Image.asset(
                'assets/loadingImage.png', 
                height: 100, 
              ),
            ),
          ],
        ),
      ),
    );
  }
}



