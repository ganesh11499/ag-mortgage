import 'package:flutter/material.dart';

class StepfourPage extends StatefulWidget {
  const StepfourPage({super.key});

  @override
  StepFourPageState createState() => StepFourPageState();
}

class StepFourPageState extends State<StepfourPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              //Slide icon image
              Padding(
                  padding: const EdgeInsets.only(top: 2.0),
                  child: Image.asset(
                    'assets/stepfourslide.png',
                    height: 50,
                    width: 80,
                  )),

              const SizedBox(
                height: 80,
              ),

              //Main Image
              Image.asset(
                'assets/stepfour.png',
                height: 200,
                width: 200,
              ),

              const SizedBox(height: 50), //Space after main image

              //Heading Text
              const Text(
                'Investment',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                  color: Color.fromRGBO(17, 2, 96, 1.0),
                ),
              ),

              const SizedBox(
                height: 15,
              ), //Space after heading text

              //Description Text
              const Text(
                'Invest in high growth real estate opportunities starting from just N500,000. Build your wealth with secure, property-backed returns. T&Cs apply.',
                style: TextStyle(fontSize: 16, color: Colors.black54),
                textAlign: TextAlign.center,
              ),

              const Spacer(),

              //Skip and next buttons
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
                          onPressed: () {},
                          child: const Text(
                            'Login',
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
                          Navigator.pushNamed(context, '/termsConditionsPage');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF110260),
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        child: const Text('Get Started',
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
    );
  }
}
