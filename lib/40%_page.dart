import 'package:flutter/material.dart';
import 'profile_picture.dart';

class FortyPercent extends StatelessWidget {
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
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text(
                        'Can I Know?,\nwhat is your date of birth?',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Inter',
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10.0),
                                child: RectangleWidget(
                                  child: TextField(
                                    keyboardType: TextInputType.number,
                                    style: TextStyle(color: Colors.white),
                                    decoration: InputDecoration(
                                      labelStyle:
                                          TextStyle(color: Colors.white),
                                      border: InputBorder.none,
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: 42.0, vertical: 15.0),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10.0),
                              Text(
                                'Day',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 1.0),
                        Expanded(
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10.0),
                                child: RectangleWidget(
                                  child: TextField(
                                    keyboardType: TextInputType.number,
                                    style: TextStyle(color: Colors.white),
                                    decoration: InputDecoration(
                                      labelStyle:
                                          TextStyle(color: Colors.white),
                                      border: InputBorder.none,
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: 45.0, vertical: 15.0),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10.0),
                              Text(
                                'Month',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 1.0),
                        Expanded(
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10.0),
                                child: RectangleWidget(
                                  child: TextField(
                                    keyboardType: TextInputType.number,
                                    style: TextStyle(color: Colors.white),
                                    decoration: InputDecoration(
                                      labelStyle:
                                          TextStyle(color: Colors.white),
                                      border: InputBorder.none,
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: 35.0, vertical: 15.0),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10.0),
                              Text(
                                'Year',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 50.0),
                    Image.asset(
                      'images/Illus 5.png',
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
                                      0.4, // Change this value to adjust the progress
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
                              '40%', // Update this with the progress percentage
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
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ProfilePicture(),
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
