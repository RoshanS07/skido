import 'package:flutter/material.dart';
import 'my_profile.dart';

class RectangleWidget extends StatelessWidget {
  final Widget child;
  final double width;
  final double height;

  const RectangleWidget({
    Key? key,
    required this.child,
    this.width = 150, // Default width
    this.height = 54, // Default height
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
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

class EditProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF240046),
        appBar: AppBar(
          backgroundColor: Color(0xFF240046),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white, size: 35),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyProfile()),
              );
              // Navigate back or perform any desired action
            },
          ),
          title: Text(
            'Edit Profile',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontFamily: 'Inter',
              fontSize: 24.0,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Stack(
                    children: [
                      CircleAvatar(
                        radius: 60,
                        backgroundImage: AssetImage(
                            'assets/p.png'), // Add your image asset here
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: IconButton(
                          icon: Icon(Icons.edit_square),
                          onPressed: () {
                            /* Handle edit action */
                          },
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Name',
                  style: TextStyle(
                      color: Colors.white, fontSize: 18), // Adjusted font size
                ),
                SizedBox(height: 2),
                RectangleWidget(
                  width: 379, // Set width for the box
                  height: 54, // Set height for the box
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.transparent,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Email Id',
                  style: TextStyle(
                      color: Colors.white, fontSize: 18), // Adjusted font size
                ),
                SizedBox(height: 5),
                RectangleWidget(
                  width: 379, // Set width for the box
                  height: 54, // Set height for the box
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.transparent,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Phone Number',
                  style: TextStyle(
                      color: Colors.white, fontSize: 18), // Adjusted font size
                ),
                SizedBox(height: 5),
                RectangleWidget(
                  width: 379, // Set width for the box
                  height: 54, // Set height for the box
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.transparent,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Date of Birth', // Add "Date of Birth" text
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18), // Set the desired style
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          RectangleWidget(
                            width: 110, // Set width for the box
                            height: 54, // Set height for the box
                            child: TextField(
                              keyboardType: TextInputType.number,
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                labelStyle: TextStyle(color: Colors.white),
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 42.0,
                                  vertical: 15.0,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            'Day',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Expanded(
                      child: Column(
                        children: [
                          RectangleWidget(
                            width: 110, // Set width for the box
                            height: 54, // Set height for the box
                            child: TextField(
                              keyboardType: TextInputType.number,
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                labelStyle: TextStyle(color: Colors.white),
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 45.0,
                                  vertical: 15.0,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            'Month',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Expanded(
                      child: Column(
                        children: [
                          RectangleWidget(
                            width: 110, // Set width for the box
                            height: 54, // Set height for the box
                            child: TextField(
                              keyboardType: TextInputType.number,
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                labelStyle: TextStyle(color: Colors.white),
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 35.0,
                                  vertical: 15.0,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            'Year',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  'Gender',
                  style: TextStyle(
                      color: Colors.white, fontSize: 18), // Adjusted font size
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      RectangleWidget(
                        width: 110, // Set width for the buttons
                        height: 54, // Set height for the buttons
                        child: TextButton(
                          onPressed: () {
                            /* Handle male selection */
                          },
                          child: Text(
                            'Male',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      RectangleWidget(
                        width: 110, // Set width for the buttons
                        height: 54, // Set height for the buttons
                        child: TextButton(
                          onPressed: () {
                            /* Handle female selection */
                          },
                          child: Text(
                            'Female',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      RectangleWidget(
                        width: 110, // Set width for the buttons
                        height: 54, // Set height for the buttons
                        child: TextButton(
                          onPressed: () {
                            /* Handle other selection */
                          },
                          child: Text(
                            'Other',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Aadhar Card Number',
                  style: TextStyle(
                      color: Colors.white, fontSize: 18), // Adjusted font size
                ),
                SizedBox(height: 5),
                RectangleWidget(
                  width: 379, // Set width for the box
                  height: 54, // Set height for the box
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.transparent,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'College / School Name',
                  style: TextStyle(
                      color: Colors.white, fontSize: 18), // Adjusted font size
                ),
                SizedBox(height: 5),
                RectangleWidget(
                  width: 379, // Set width for the box
                  height: 54, // Set height for the box
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.transparent,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'City',
                  style: TextStyle(
                      color: Colors.white, fontSize: 18), // Adjusted font size
                ),
                SizedBox(height: 5),
                RectangleWidget(
                  width: 379, // Set width for the box
                  height: 54, // Set height for the box
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.transparent,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: 370,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: () {
                      /* Handle submit action */
                    },
                    child: Text(
                      'Submit',
                      style:
                          TextStyle(fontSize: 18), // Set the desired font size
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            25), // Set button border radius
                      ),
                      shadowColor: Color(
                          0x80000000), // Vintage shade color with 50% opacity
                      elevation: 4, // Set elevation for the button
                    ),
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
