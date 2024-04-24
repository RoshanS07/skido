import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'edit_hobbies.dart';
import 'edit_interests.dart';
import 'wallet_history.dart';
import 'notifications.dart';
import 'accounts.dart';
import 'edit_profile.dart';

class HalfColorBorderPainter extends CustomPainter {
  final Color leftColor;
  final Color rightColor;
  final double borderWidth;

  HalfColorBorderPainter({
    required this.leftColor,
    required this.rightColor,
    required this.borderWidth,
  });

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..strokeWidth = borderWidth
      ..style = PaintingStyle.stroke;

    // Draw left half border
    paint.color = leftColor;
    canvas.drawArc(
      Rect.fromLTWH(0, 0, size.width, size.height),
      -1.5, // Start angle (90 degrees clockwise from top)
      3.14, // Sweep angle (180 degrees)
      false,
      paint,
    );

    // Draw right half border
    paint.color = rightColor;
    canvas.drawArc(
      Rect.fromLTWH(0, 0, size.width, size.height),
      1.65, // Start angle (90 degrees counter-clockwise from top)
      3.14, // Sweep angle (180 degrees)
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class MyProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(
        builder: (context) => Scaffold(
          backgroundColor: Color(0xFF240046),
          body: Center(
            child: Stack(
              children: [
                Positioned(
                  top: 60,
                  left: 20,
                  child: Row(
                    children: [
                      Icon(Icons.arrow_back, color: Colors.white),
                      SizedBox(width: 8),
                      Text(
                        'My Profile',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 18),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 90,
                  left: 120,
                  child: Column(
                    children: [
                      Container(
                        width: 150,
                        height: 150,
                        child: CustomPaint(
                          painter: HalfColorBorderPainter(
                            leftColor: Color.fromRGBO(245, 183, 89, 1),
                            rightColor: Color.fromARGB(255, 66, 41, 92),
                            borderWidth: 13,
                          ),
                          child: ClipOval(
                            child: Image.network(
                              'https://th.bing.com/th/id/OIP.T35_pVEMZyCa6iPPp7zusQAAAA?rs=1&pid=ImgDetMain',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: EdgeInsets.only(bottom: 0),
                        child: Text(
                          ' ROHAN ROY \n10123456789',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 217,
                  left: 165,
                  child: Image(
                    image: AssetImage('images/download.png'),
                    width: 50,
                    height: 50,
                  ),
                ),
                Positioned(
                  top: 380,
                  left: 16,
                  child: Image(
                    image: AssetImage('images/Line 2.png'),
                    width: 358,
                    height: 350,
                  ),
                ),
                Positioned(
                  top: 50,
                  right: 0.5,
                  left: 0.5,
                  child: Image(
                    image: AssetImage('images/Rectangle 50.png'),
                    width: MediaQuery.of(context).size.width,
                    height: 280,
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  top: 740,
                  left: 17,
                  child: Image(
                    image: AssetImage('images/Rectangle 58.png'),
                    width: 358,
                    height: 51,
                  ),
                ),
                Positioned(
                  top: 740,
                  left: 20,
                  right: 20,
                  child: GestureDetector(
                    onTap: () {
                      // Handle action for Log Out
                      print('Logged out');
                    },
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color.fromRGBO(255, 255, 255, 0.18),
                            Color.fromRGBO(255, 255, 255, 0),
                          ],
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Log Out',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 340,
                  left: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EditProfile()),
                          );
                          // Handle action for Profile
                        },
                        child: Row(
                          children: [
                            Image(
                              image: AssetImage('images/task-square.png'),
                              width: 25,
                              height: 25,
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Profile',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      GestureDetector(
                        onTap: () {
                          // Handle action for Favorites
                        },
                        child: Row(
                          children: [
                            Image(
                              image: AssetImage('images/heart-edit.png'),
                              width: 25,
                              height: 25,
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Favorites',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EditInterest()),
                          );
                          // Handle action for Interest
                        },
                        child: Row(
                          children: [
                            Image(
                              image: AssetImage('images/cup.png'),
                              width: 25,
                              height: 25,
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Interest',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EditHobbies()),
                          );
                          // Handle action for Hobbies
                        },
                        child: Row(
                          children: [
                            Image(
                              image: AssetImage('images/heart-edit.png'),
                              width: 25,
                              height: 25,
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Hobbies',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Notifications()),
                          );
                          // Handle action for Notifications
                        },
                        child: Row(
                          children: [
                            Image(
                              image: AssetImage('images/notification.png'),
                              width: 25,
                              height: 25,
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Notifications',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WalletHistory()),
                          );
                          // Handle action for Wallet History
                        },
                        child: Row(
                          children: [
                            Image(
                              image: AssetImage('images/wallet.png'),
                              width: 25,
                              height: 25,
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Wallet History',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 25),
                      GestureDetector(
                        onTap: () {
                          // Handle action for Help & Support
                        },
                        child: Row(
                          children: [
                            Image(
                              image: AssetImage('images/message-question.png'),
                              width: 25,
                              height: 25,
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Help & Support',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      GestureDetector(
                        onTap: () {
                          // Handle action for Contact Us
                        },
                        child: Row(
                          children: [
                            Image(
                              image: AssetImage('images/tag-user.png'),
                              width: 25,
                              height: 25,
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Contact Us',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      GestureDetector(
                        onTap: () {
                          // Handle action for Terms & Conditions
                        },
                        child: Row(
                          children: [
                            Image(
                              image: AssetImage('images/message-text.png'),
                              width: 25,
                              height: 25,
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Terms & Conditions',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Account()),
                          );
                          // Handle action for Account
                        },
                        child: Row(
                          children: [
                            Image(
                              image: AssetImage('images/shield-security.png'),
                              width: 25,
                              height: 25,
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Account',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
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
