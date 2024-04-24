import 'package:flutter/material.dart';
import '20%_page.dart';

class FifteenPercent extends StatelessWidget {
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
  TextEditingController _controller = TextEditingController();
  String inputName = '';

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
              height: MediaQuery.of(context).size.height * 0.2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      "Great, \nWhat's your mobile number?",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Inter',
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18.0),
                    child: RectangleWidget(
                      child: TextField(
                        controller: _controller,
                        readOnly:
                            false, // Set readOnly to true to make it uneditable
                        decoration: InputDecoration(
                          hintStyle: TextStyle(color: Colors.white),
                          contentPadding:
                              EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                          border: InputBorder.none,
                        ),
                        style: TextStyle(color: Colors.white),
                      ),
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
                  'Explore engaging conversations with experts across diverse fields like Tech, Arts, Science, Psychology, and more! Kickstart your Edu-Dating journey with me.',
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
                                widthFactor: 0.15,
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
                            '15%',
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
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (content) => TwentyPercent(),
                                    ),
                                  );
                                },
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
                                      EdgeInsets.symmetric(vertical: 13.0)),
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

TextEditingController _controller = TextEditingController();
String inputName = '';

@override
Widget build(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      Container(
        height: MediaQuery.of(context).size.height * 0.11,
      ),
      Container(
        height: MediaQuery.of(context).size.height * 0.2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                "Great, \nWhat's your mobile number?",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Inter',
                  fontSize: 20.0,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0),
              child: RectangleWidget(
                child: TextField(
                  controller: _controller,
                  readOnly: false, // Set readOnly to true to make it uneditable
                  decoration: InputDecoration(
                    hintStyle: TextStyle(color: Colors.white),
                    contentPadding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                    border: InputBorder.none,
                  ),
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
      SizedBox(height: 30),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Explore engaging conversations with experts across diverse fields like Tech, Arts, Science, Psychology, and more! Kickstart your Edu-Dating journey with me.',
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
                          widthFactor: 0.05,
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
                      (0.05 * 100).toStringAsFixed(0).padLeft(2, '0') + '%',
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
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                                if (states.contains(MaterialState.disabled)) {
                                  return Colors.white.withOpacity(0.5);
                                }
                                return Colors.white;
                              },
                            ),
                            padding:
                                MaterialStateProperty.all<EdgeInsetsGeometry>(
                                    EdgeInsets.symmetric(vertical: 13.0)),
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
                            fontSize: 18,
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
    ],
  );
}

class RectangleWidget extends StatelessWidget {
  final Widget child;

  const RectangleWidget({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 358,
      height: 54,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF492b65),
            Color(0xFF240046),
          ],
        ),
        border: Border.all(
          color: Color(0xFFC0C0C0), // White outline color
          width: 1, // Width of the outline
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0x80000000), // Vintage shade color with 50% opacity
            spreadRadius: 2,
            blurRadius: 4,
            offset: Offset(0, 2), // Shadow position
          ),
        ],
      ),
      child: child,
    );
  }
}
