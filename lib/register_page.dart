import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  RegisterPageState createState() => RegisterPageState();
}

class RegisterPageState extends State<RegisterPage> {
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
                          'Register',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF110260), // Custom color
                          ),
                        ),

                        const Text(
                          'Enter the Phone Number you registered with NIN',
                          style: TextStyle(fontSize: 12, color: Colors.black54),
                        ),
                        const SizedBox(height: 30.0),

                        const Text(
                          'Phone Number',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                        ),

                        const SizedBox(
                          height: 10,
                        ),

                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Input phone Number',
                            hintStyle: const TextStyle(
                                fontSize:
                                    12), // Placeholder text inside the input field
                            filled: true, // Fill the input field with color
                            fillColor: Colors
                                .white, // Background color of the input field
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Color(0xFFBFB6F0)), // Border color
                              borderRadius:
                                  BorderRadius.circular(100), // Rounded corners
                            ),
                          ),
                          keyboardType: TextInputType
                              .phone, // Ensures only numbers can be entered
                        ),

                        const SizedBox(height: 30.0),

                        const Text(
                          'Promo Code(optional)',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                        ),

                        const SizedBox(
                          height: 10,
                        ),

                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Input Promo Code',
                            hintStyle: const TextStyle(
                                fontSize:
                                    12), // Placeholder text inside the input field
                            filled: true, // Fill the input field with color
                            fillColor: Colors
                                .white, // Background color of the input field
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Color(0xFFBFB6F0)), // Border color
                              borderRadius:
                                  BorderRadius.circular(100), // Rounded corners
                            ),
                          ),
                        ),

                        const SizedBox(height: 30.0),
                        // Submit button

                        SizedBox(
                          width: double.infinity, // Ensures 100% width
                          child: ElevatedButton(
                            onPressed: () {
                              // Navigate to authentication screen
                              Navigator.pushNamed(
                                  context, '/otpAuthPage');
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF110260),
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100),
                              ),
                            ),
                            child: const Text(
                              'Register',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                          ),
                        ),

                        const SizedBox(
                          height: 10,
                        ),

                        Center(
                        child: RichText(
                          text: const TextSpan(
                            children: [
                              // Style for "Already have an account ?"
                              TextSpan(
                                text: 'Already have an account ? ',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors
                                      .black54, // Style for the first part of the text
                                ),
                              ),
                              // Style for "Login"
                              TextSpan(
                                text: 'Login',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(
                                      0xFF110260),
                                       // Style for the second part of the text
                                  fontWeight: FontWeight.bold,
                                  
                                  // You can also make it bold or other custom styles
                                ),
                              ),
                            ],
                          ),
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
