import 'package:flutter/material.dart';

class OtpauthPage extends StatefulWidget {
  const OtpauthPage({super.key});

  @override
  OtpauthPageState createState() => OtpauthPageState();
}

class OtpauthPageState extends State<OtpauthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // Background image
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'assets/houseimage.png'), // Replace with your image path
                  fit: BoxFit
                      .cover, // Ensures the image covers the entire screen
                ),
              ),
            ),
            // Back icon at the top left
            Positioned(
              top: 20.0,
              left: 20.0,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context); // Navigate back to the previous page
                },
                child: Row(
                  children: [
                    // Back icon image
                    Image.asset(
                      'assets/backicon.png', // Path to your back icon image
                      height: 24, // Height of the icon
                      width: 24, // Width of the icon
                    ),
                    const SizedBox(
                        width: 5), // Space between icon and text (if needed)
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20.0),
            // Registration form with white background at the bottom
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              top: 250,
              child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25), // Rounded top left corner
                      topRight: Radius.circular(25), // Rounded top right corner
                      bottomLeft: Radius.circular(
                          25), // Optional: Rounded bottom left corner
                      bottomRight: Radius.circular(
                          25), // Optional: Rounded bottom right corner
                    ),
                  ),
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Registration title
                        const Text(
                          'Authentication',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF110260), // Custom color
                          ),
                        ),

                        const Text(
                          'Enter the 6 digits code sent to your Phone Number to verify your request',
                          style: TextStyle(fontSize: 12, color: Colors.black54),
                        ),
                        const SizedBox(height: 20.0),

                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: List.generate(6, (index) {
                                return SizedBox(
                                  width: 48,
                                  height: 48,
                                  child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    maxLength: 1,
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(fontSize: 18),
                                    decoration: InputDecoration(
                                      counterText:
                                          "", // Removes maxLength counter
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        borderSide: const BorderSide(
                                            color: Color(0xFFBFB6F0)),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(12),
                                        borderSide: const BorderSide(
                                            color: Color(0xFFBFB6F0), width: 2),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        borderSide: const BorderSide(
                                            color: Color(0xFFBFB6F0)),
                                      ),
                                    ),
                                  ),
                                );
                              }),
                            ),
                          ],
                        ),

                        const SizedBox(height: 30.0),
                        // Submit button

                        SizedBox(
                          width: double.infinity, // Ensures 100% width
                          child: ElevatedButton(
                            onPressed: () {
                              // Navigate to authentication screen
                              Navigator.pushNamed(
                                  context, '/passwordPage');
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF110260),
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100),
                              ),
                            ),
                            child: const Text(
                              'Verify',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                          ),
                        ),

                        const SizedBox(
                          height: 20,
                        ),

                        //Dont receive text
                        const Center(
                          child: Text(
                            "Don't receive verification code?",
                            style:
                                TextStyle(fontSize: 10, color: Colors.black54)
                          ),
                        ),

                        const SizedBox(height: 10,), //space after text

                        //Ends in text
                        const Center(
                          child: Text(
                            "End's in 00:50s",
                            style: TextStyle(fontSize: 8, color: Colors.red),
                          ),
                        ),

                        const SizedBox(height: 3,), //space after text

                        const Center(
                            child: Text(
                            "Resend OTP",
                            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600,
                            color: Color(0xFF110260)),
                          ),
                        ),

                      ])),
            )
          ],
        ),
      ),
    );
  }
}
