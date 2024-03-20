import 'dart:async';
import 'package:flutter/material.dart';
import '40%_page.dart';

class TwentyFivePercent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xFF240046),
        body: SafeArea(
          child: Stack(
            children: [
              Positioned(
                top: 7,
                right: 7,
                child: TextButton(
                  onPressed: () {
                    // Handle skip button pressed
                  },
                  child: Text(
                    'Skip',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Inter',
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 10,
                left: 10,
                child: Image.asset(
                  'images/SKIDO Logo transparant 1-1.png',
                  width: 81,
                  height: 35,
                ),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Text(
                        'Before we proceed, Rohan, let\'s create a profile that mirrors your goals and passions. Ready to craft your unique journey?\n\nLet\'s dive in!',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Inter',
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                    SizedBox(height: 50.0),
                    Image.asset(
                      'images/Illus 1.png',
                      width: 450.0,
                      height: 250.0,
                      alignment: Alignment.centerRight,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 11,
                            child: Stack(
                              alignment: Alignment.centerLeft,
                              children: [
                                Container(
                                  height: 5,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                  ),
                                ),
                                FractionallySizedBox(
                                  alignment: Alignment.centerLeft,
                                  widthFactor:
                                      0.25, // Change this value to adjust the progress
                                  child: Container(
                                    height: 5,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color(0xFFF5B759),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            flex: 1,
                            child: Text(
                              '25%', // Update this with the progress percentage
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 13.0),
                              child: DelayedButton()),
                        ),
                      ],
                    ),
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

class DelayedButton extends StatefulWidget {
  @override
  _DelayedButtonState createState() => _DelayedButtonState();
}

class _DelayedButtonState extends State<DelayedButton> {
  bool buttonEnabled = false;

  @override
  void initState() {
    super.initState();
    // Start a timer to enable the button after 3 seconds
    Timer(Duration(seconds: 3), () {
      setState(() {
        buttonEnabled = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: buttonEnabled
          ? () {
              // Navigate to TwentyFivePercent screen
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FortyPercent(),
                ),
              );
            }
          : null,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled)) {
              return Colors.white.withOpacity(0.5);
            }
            return Colors.white;
          },
        ),
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
            EdgeInsets.symmetric(vertical: 13.0)),
      ),
      child: Text(
        'Continue',
        style: TextStyle(
          fontSize: 18.0,
          color: Color(0xFF240046),
        ),
      ),
    );
  }
}
