import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '40%_page.dart';

class ThirtyFivePercent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Color(0xFF240046),
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 10,
              left: 5,
              child: Image.asset(
                'images/SKIDO Logo transparant 1-1.png',
                width: 100,
                height: 50,
              ),
            ),
            Positioned(
              top: 7,
              right: 7,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FortyPercent(),
                    ),
                  );
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 10),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 90),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      'Hey Rohan, kick things off by uploading a profile picture that truly mirrors your personality. How about sharing a warm and friendly smile? Let\'s make your online presence shine!',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),

                  SizedBox(height: 20),

                  Center(
                    child: Stack(
                      children: [
                        CircleAvatar(
                          radius: 90, // Increase the radius here
                          backgroundColor: Color(0xFF240046),
                          backgroundImage: AssetImage(
                              'images/p.png'), // Change 'your_image.jpg' to the actual path of your image
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
                            onTap: () async {
                              final picker = ImagePicker();
                              final pickedImage = await picker.getImage(
                                source: ImageSource
                                    .gallery, // You can change to ImageSource.camera for opening camera
                              );
                              // You can handle the pickedImage here
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
                  ),
                  SizedBox(height: 30),

                  Container(
                    width: 150, // Set width to match parent width
                    child: ElevatedButton.icon(
                      onPressed: () async {
                        final picker = ImagePicker();
                        final pickedImage = await picker.getImage(
                          source: ImageSource
                              .gallery, // You can change to ImageSource.camera for opening camera
                        );
                      },
                      icon: Icon(Icons.add),
                      label: Text(
                        "Add",
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Color(0xFF240046),
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                          vertical: 13.0,
                        ), // Adjust padding as needed
                      ),
                    ),
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
                                    0.35, // Change this value to adjust the progress
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
                            '35%', // Update this with the progress percentage
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                      height:
                          20), // Add space between the loading bar and the "Continue" button
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
                                  builder: (context) => FortyPercent(),
                                ),
                              );
                            },
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
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
