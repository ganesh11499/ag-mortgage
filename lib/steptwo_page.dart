import 'package:flutter/material.dart';

class SteptwoPage extends StatelessWidget {
  const SteptwoPage({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              // Slide Icon Image
              Padding(
                padding: const EdgeInsets.only(top: 2.0),
                child: Image.asset(
                  'assets/steptwoslide.png',
                  height: 50,
                  width: 88,
                ),
              ),
              const SizedBox(height: 80),

              // Main Image
              Image.asset(
                'assets/steptwo.png',
                height: 200,
                width: 200,
              ),
              const SizedBox(height: 50), // Space after main image

              // Company Name
              const Text(
                'Rent to Own',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                  color: Color.fromRGBO(17, 2, 96, 1.0),
                ),
              ),
              const SizedBox(height: 15), // Space after company name

              // Company Description
              const Text(
                'With a minimum of 40% down payment in an interest bearing account, move into your dream property within 30 days and convert to a mortgage in 12 months. T&Cs apply.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                ),
                textAlign: TextAlign.center,
              ),
              const Spacer(), // Push buttons to the bottom of the screen

              // Skip and Next Buttons
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0), // Padding around the Row
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Skip Button
                    Expanded(
                      flex: 3, // 30% width
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white, // Background color white
                          border: Border.all(
                            color:const  Color(0xFF110260), // Dark blue border
                            width: 1.0,
                          ),
                          borderRadius:
                              BorderRadius.circular(50), // Rounded corners
                        ),
                        child: TextButton(
                          onPressed: () {
                            // 
                          },
                          child: const Text(
                            'Skip',
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFF110260), // Dark blue text
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 16), // Space between the buttons

                    // Next Button
                    Expanded(
                      flex: 7, // 70% width
                      child: ElevatedButton(
                        onPressed: () {
                          // Navigate into next page
                          Navigator.pushNamed(context, '/stepThreePage');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color(0xFF110260), // Blue background color
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(50), // Rounded corners
                          ),
                        ),
                        child: const Text(
                          'Next',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white, // White text
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
