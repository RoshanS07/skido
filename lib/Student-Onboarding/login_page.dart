import 'package:flutter/material.dart';
import 'login_page2.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Navigator(
        onGenerateRoute: (routeSettings) {
          return MaterialPageRoute(
            builder: (context) => HomePage(),
          );
        },
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Color(0xFF240046),
          child: Stack(
            children: [
              Positioned(
                top: 350,
                left: 60,
                right: 60,
                height: 70,
                child: Image.asset(
                  'images/SKIDO Logo transparant 1.png',
                  fit: BoxFit.contain,
                  height: 1000,
                ),
              ),
              Positioned(
                top: 550,
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  width: double.infinity,
                  height: 250,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    border: Border(
                      top: BorderSide(color: Colors.grey),
                      bottom: BorderSide(color: Colors.grey),
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 25,
                        height: 6,
                        color: Colors.grey,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 16),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF240046),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            minimumSize: Size(350, 50),
                            textStyle: TextStyle(color: Colors.white),
                          ),
                          child: Text(
                            'Log In with Phone',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'or',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 50,
                          width: 350,
                          decoration: BoxDecoration(
                            color: Color(0xFF240046),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 1, horizontal: 1),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'images/google_logo.png',
                                  width: 17,
                                  height: 17,
                                ),
                                SizedBox(width: 1),
                                Text(
                                  '  Continue with Google',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'Don\'t have an account?',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginPage2(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          minimumSize: Size(200, 50),
                          textStyle: TextStyle(color: Colors.black),
                        ),
                        child: Text(
                          'Create Account',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
