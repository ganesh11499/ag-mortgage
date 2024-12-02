import 'package:flutter/material.dart';

class StepthreePage extends StatefulWidget {
  const StepthreePage({super.key});

  @override
  StepThreePageState createState() => StepThreePageState();
}

class StepThreePageState extends State<StepthreePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              //SLide icon image
              Padding(
                padding: const EdgeInsets.only(top: 2.0),
                child: Image.asset(
                  'assets/stepthreeslide.png',
                  height: 50,
                  width: 80,
                ),
              ),

              const SizedBox(
                height: 80,
              ), // space between

              //Main image
              Image.asset('assets/stepthree.png', height: 200, width: 200),

              const SizedBox(height: 50), //Space after main image

              //Heading text
              const Text('Construction Finace',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                    color: Color.fromRGBO(17, 2, 96, 1.0),
                  )),

              const SizedBox(
                height: 15,
              ), //Space between Main heading and description

              //Description
              const Text(
                'Are you stuck halfway through your home construction? Unlock the funds you need to complete your project and bring your dream home to life. T&Cs apply.',
                style: TextStyle(fontSize: 16, color: Colors.black54),
                textAlign: TextAlign.center,
              ),

              const Spacer(), //Push buttons to the bottomof the screen

              //Skip and Next buttons
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //Skip button

                    Expanded(
                      flex: 3, //widt 30%
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
                            'Skip',
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
                      flex: 7, //70% width
                      child: ElevatedButton(
                        onPressed: () {
                          //Navigate to step 4 page
                          Navigator.pushNamed(context, '/stepFourPage');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF110260),
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        child: const Text('Next',
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
