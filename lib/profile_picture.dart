import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // Add MaterialApp widget here
        home: Scaffold(
            backgroundColor: Color(0xFF240046),
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "images/SKIDO Logo transparant 1-1.png",
                        width: 100,
                        height: 50,
                      ),
                      TextButton(
                        onPressed: () {
                          // Handle skip button pressed
                        },
                        child: Text(
                          'Skip',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Hey Rohan, kick things off by uploading a profile picture that truly mirrors your personality. How about sharing a warm and friendly smile? Let\'s make your online presence shine!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                      height: 20), // Add space between the text and the circle
                  Stack(
                    children: [
                      CircleAvatar(
                        radius: 80, // Increase the radius here
                        backgroundColor: Color(0xFF240046),
                        // Replace 'assets/your_image.jpg' with the actual path of your image
                        backgroundImage:
                            AssetImage("images\SKIDO Logo transparant 1.png"),
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white, width: 2),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 10, // Adjusted bottom position
                        right: 10, // Adjusted right position
                        child: GestureDetector(
                          onTap: () {
                            _showImageOptions(context);
                          },
                          child: Container(
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFF240046),
                            ),
                            child: Icon(
                              Icons.camera_alt,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                      height:
                          20), // Add space between the circle and the "Add" button
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.add),
                    label: Text("Add"),
                  ),
                  SizedBox(
                      height:
                          20), // Add space between the "Add" button and the loading bar
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
                              'Continue',
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
                ]),
              ),
            )));
  }

  void _showImageOptions(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          color: Color(0xFF240046),
          child: Wrap(
            children: <Widget>[
              ListTile(
                leading: Icon(
                  Icons.camera_alt,
                  color: Colors.white,
                ),
                title: Text(
                  'Open Camera',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  // Handle opening camera
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.image,
                  color: Colors.white,
                ),
                title: Text(
                  'Choose from Gallery',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  // Handle choosing from gallery
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
