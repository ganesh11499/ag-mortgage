import 'package:flutter/material.dart';

class TermsandconditionsPage extends StatefulWidget {
  const TermsandconditionsPage({super.key});

  @override
  TermsandconditionsPageState createState() => TermsandconditionsPageState();
}

class TermsandconditionsPageState extends State<TermsandconditionsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Row(
                    crossAxisAlignment:
                        CrossAxisAlignment.center, // Center items vertically
                    children: [
                      // Back icon on the left
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(
                              context); // Navigate back to the previous page
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
                                width:
                                    5), // Space between icon and text (if needed)
                          ],
                        ),
                      ),

                      // Spacer to push the center image to the center
                      const Spacer(),

                      // Centered image
                      Image.asset(
                        'assets/termsconditions.png', // Path to your centered image
                        height: 56,
                        width: 149,
                      ),

                      // Spacer to balance alignment (no content on the right)
                      const Spacer(),
                    ],
                  ),
                ),

                const SizedBox(height: 20.0), // Space after image row

                // Terms and Conditions Header
                const Center(
                  child: Text(
                    'Terms & Conditions',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(17, 2, 96, 1),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),

                const SizedBox(height: 5.0), // Space after headerline

                // Description text
                const Text(
                  'Read and understand our terms of services, before you create your account.',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black54,
                  ),
                  textAlign: TextAlign.center,
                ),

                const SizedBox(
                  height: 10,
                ), // Space after description text

                //Terms and condition points
                const Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Faucibus tincidunt id arcu, ultrices in varius neque, vel. Viverra cras et sagittis, mattis scelerisque in enim nibh. Fringilla et at eget faucibus ipsum dui. Lacus, quis etiam hac fusce euismod faucibus tincidunt non molestie.',
                  style: TextStyle(fontSize: 15, color: Colors.black54),
                  textAlign: TextAlign.center,
                ),

                const Text(
                  'Nec scelerisque aliquet varius vulputate eu. Arcu accumsan tellus pretium velit ullamcorper vitae aliquet lectus amet. ',
                  style: TextStyle(fontSize: 15, color: Colors.black54),
                  textAlign: TextAlign.center,
                ),

                const Text(
                  'Tortor habitasse pharetra ut non gravida erat. Condimentum praesent venenatis hendrerit nullam consectetur consequat. Commodo nibh purus dignissim amet, adipiscing semper velit. Dignissim blandit facilisi nunc lobortis. Quisque consectetur nisi lectus diam et non, fusce. A adipiscing adipiscing sit nibh quam. ',
                  style: TextStyle(fontSize: 15, color: Colors.black54),
                  textAlign: TextAlign.center,
                ),

                const Text(
                    'Duis amet ultrices id diam tellus. Egestas erat faucibus egestas mauris nisl laoreet phasellus. Volutpat, facilisi augue urna tortor et blandit aliquet neque. Id pharetra, egestas sed lacinia eget enim amet. Nisl sed arcu, tellus ridiculus facilisi aliquam mauris est.',
                    style: TextStyle(fontSize: 15, color: Colors.black54),
                    textAlign: TextAlign.center),

                const Text(
                  'Sed fermentum tortor, aliquet pellentesque nulla non. Nibh lectus duis hac tortor, lobortis enim. Pharetra, nulla at enim consectetur amet, ut enim porttitor. Nisi turpis amet, eget sit integer elementum semper. Porttitor lobortis nec faucibus purus sed pellentesque amet, metus mattis. Risus velit condimentum arcu in orci, porttitor nunc, vitae. Commodo semper non vitae, sem nunc dictum. Dignissim nisl quisque in eget viverra quam.',
                  style: TextStyle(fontSize: 15, color: Colors.black54),
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height: 20),

                //Accept and Decline buttons
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //Skip button

                      Expanded(
                        flex: 5, //widt 30%
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: const Color(0xFF110260),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: TextButton(
                            onPressed: () {
                              //Navigate to previous page
                              Navigator.of(context).pop();
                            },
                            child: const Text(
                              'Decline',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xFF110260),
                              ),
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(
                        width: 16,
                      ), //Space between the buttons

                      //Next button
                      Expanded(
                        flex: 5, //70% width
                        child: ElevatedButton(
                          onPressed: () {
                            //Navigate to step 4 page
                            Navigator.pushNamed(
                                context, '/registerPage');
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF110260),
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                          child: const Text('Accept',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white)),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
