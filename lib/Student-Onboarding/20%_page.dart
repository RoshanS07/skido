import 'package:flutter/material.dart';
import '25%_page.dart';

class TwentyPercent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xFF240046),
        body: SafeArea(
          child: Center(
            child: MyForm(),
          ),
        ),
      ),
    );
  }
}

class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  List<TextEditingController> _controllers = List.generate(
    6,
    (index) => TextEditingController(),
  );

  bool isTextEntered = false;

  @override
  void initState() {
    super.initState();
    _controllers.forEach((controller) {
      controller.addListener(_textFieldListener);
    });
  }

  void _textFieldListener() {
    setState(() {
      isTextEntered =
          _controllers.every((controller) => controller.text.isNotEmpty);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.11,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.22,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: Text(
                      'Got It!\nPlease verify your OTP',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: List.generate(
                      6,
                      (index) => Container(
                        width: 54,
                        height: 54,
                        margin: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color(0xFF492b65),
                              Color(0xFF240046),
                            ],
                          ),
                          border: Border.all(
                            color:
                                Color(0xFFC0C0C0), // Set border color to white
                            width: 1,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Color(
                                  0x80000000), // Vintage shade color with 50% opacity
                              spreadRadius: 2,
                              blurRadius: 4,
                              offset: Offset(0, 2), // Shadow position
                            ),
                          ],
                        ),
                        child: Center(
                          child: TextField(
                            controller: _controllers[index],
                            onChanged: (value) {
                              setState(() {
                                isTextEntered = value.isNotEmpty;
                              });
                              if (value.isNotEmpty && value.length == 1) {
                                // Move focus to the next TextField
                                if (index < 5) {
                                  FocusScope.of(context).nextFocus();
                                } else {
                                  // Focus on last field, submit or do something else
                                }
                              }
                            },
                            keyboardType: TextInputType.number,
                            maxLength: 1,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                            decoration: InputDecoration(
                              counterText: '',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Row(
                      children: [
                        Text(
                          'Didn’t receive the OTP? ',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFFC8C7C7),
                          ),
                        ),
                        SizedBox(width: 100), // Adding space between the texts
                        Text(
                          'Resend OTP',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Join vibrant learning communities, actively engage, and collaborate with mentors to gain valuable experience and expertise.',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3, // Second column flex
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
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
                                widthFactor: 0.20,
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
                            '20%',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 13.0),
                              child: ElevatedButton(
                                onPressed: isTextEntered
                                    ? () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (content) =>
                                                  TwentyFivePercent()),
                                        );
                                      }
                                    : null,
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.resolveWith<Color>(
                                    (Set<MaterialState> states) {
                                      if (states
                                          .contains(MaterialState.disabled)) {
                                        return Colors.white.withOpacity(0.5);
                                      }
                                      return Colors.white;
                                    },
                                  ),
                                  padding: MaterialStateProperty.all<
                                      EdgeInsetsGeometry>(
                                    EdgeInsets.symmetric(vertical: 13.0),
                                  ),
                                ),
                                child: Text(
                                  'Next',
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    color: Color(0xFF240046),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 25.0),
                      Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Already have an account?',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(
                                height:
                                    5), // Adds some vertical space between the text elements
                            GestureDetector(
                              onTap: () {
                                // Add your onTap logic here
                              },
                              child: Text(
                                'Login',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 25.0)
          ],
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
      ],
    );
  }
}
