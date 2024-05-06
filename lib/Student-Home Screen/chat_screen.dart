import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Color(0xFF240046),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70.0),
          child: CustomAppBar(),
        ),
        body: Container(
          color: Colors.white,
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(
                    left: 20, right: 20), // Add padding to the column
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Color(0xFF240046), width: 1.0), // Add border
                  borderRadius:
                      BorderRadius.circular(10.0), // Add border radius
                ),
                child: Text(
                  'You can write down your questions in the inquiry box to save time in the interim.',
                  textAlign: TextAlign.center, // Align text to the center
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                ),
              ),
              SizedBox(
                  height:
                      15), // Add some space between the text and the container
              Text(
                'Thursday 24, 2022',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),
              ),
              SizedBox(height: 5), // Add some space before the ChatScreen
              Expanded(
                child: ChatScreen(), // Add the ChatScreen below the text
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFF6F6F6),
                    hintText: 'Send Message',
                    hintStyle: TextStyle(
                      color: Color(0xFFE4E4E4),
                      fontSize: 16, // Set the hint text color
                      fontFamily: 'Inter', // Set the font family
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide: BorderSide.none,
                    ),
                    suffixIcon: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Image.asset(
                            'images/edit_icon.png', // Replace with your image path
                            width: 24,
                            height: 24,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Image.asset(
                            'images/attach_icon.png', // Replace with your image path
                            width: 24,
                            height: 24,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Image.asset(
                            'images/send_icon.png', // Replace with your image path
                            width: 24,
                            height: 24,
                          ),
                        ),
                      ],
                    ),
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

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 100.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        child: Row(
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.black, size: 35),
              onPressed: () {},
            ),
            CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage(
                  'images/p.png'), // Replace 'assets/profile_photo.png' with your image path
            ),
            SizedBox(width: 10),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Ravi Sharma',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Inter',
                    fontSize: 19.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFF240046), width: 1.0),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Text(
                    '04:20 mins',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Inter',
                      fontSize: 15.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(width: 50),
            GestureDetector(
              onTap: () {
                // Handle tap on the image
              },
              child: Image.asset(
                'images/voice_call.png',
                width: 25,
                height: 25,
              ),
            ),
            SizedBox(width: 15),
            GestureDetector(
              onTap: () {
                // Handle tap on the image
              },
              child: Image.asset(
                'images/video_call.png',
                width: 25,
                height: 25,
              ),
            ),
            SizedBox(width: 15),
            GestureDetector(
              onTap: () {
                // Handle tap on the image
              },
              child: Image.asset(
                'images/more.png',
                width: 25,
                height: 25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(top: 10),
        children: [
          MessageBubble(
            message: 'Hello, Rohan. What doubts are in your mind',
            isSentByMe:
                false, // Indicates that this message is from the opposite user
          ),
          MessageBubble(
            message: 'Yes, I will brief you',
            isSentByMe:
                true, // Indicates that this message is sent by the current user
          ),
          MessageBubble(
            message: 'Lorem ipsum dolor sit am,',
            isSentByMe:
                false, // Indicates that this message is sent by the current user
          ),
          MessageBubble(
            message: 'Sed do eiusmod tempor incididunt ut labore et dolore',
            isSentByMe:
                true, // Indicates that this message is sent by the current user
          ),
          // Add more message bubbles as needed
        ],
      ),
    );
  }
}

class MessageBubble extends StatelessWidget {
  final String message;
  final bool isSentByMe;

  MessageBubble({
    required this.message,
    required this.isSentByMe,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        mainAxisAlignment:
            isSentByMe ? MainAxisAlignment.end : MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (!isSentByMe)
            CircleAvatar(
              radius: 25.0,
              // Replace 'images/avatar.png' with the path to the avatar image
              backgroundImage: AssetImage('images/p.png'),
            ),
          SizedBox(width: 8.0),
          Flexible(
            // Use Flexible instead of Expanded
            child: Container(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width *
                    0.7, // Set maximum width
              ),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: isSentByMe ? Color(0xFF240046) : Colors.grey[300],
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Text(
                message,
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 16.0,
                  color: isSentByMe ? Colors.white : Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
