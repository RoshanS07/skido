import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'chat_screen.dart';

class ChatCalls extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isChatButtonClicked =
      false; // Track the clicked state of the chat button
  bool isCallsButtonClicked =
      false; // Track the clicked state of the calls button

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF240046), // Background Color
      appBar: AppBar(
        backgroundColor: Color(0xFF240046), // Match background color
        titleSpacing: 0, // Ensure no space between title and leading widget
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 0.0, left: 10.0), // Add padding
              child: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white, // Set icon color to white
                ),
                iconSize: 30,
                onPressed: () {
                  // Add functionality for arrow button press
                  print('Arrow button pressed');
                },
              ),
            ),
            // Add space between arrow and title
            Padding(
              padding: const EdgeInsets.only(top: 9, left: 5.0),
              child: Text(
                'Chats',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                  height: 10), // Add some space between app bar and container
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.white, // Set outline color to white
                      width: 1, // Set outline width to 1px
                    ),
                  ),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          // Implement search functionality
                          print('Search button clicked');
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Image.asset(
                            'images/search-normal.png', // Provide the path to your image
                            width: 24, // Adjust the width as needed
                            height: 24, // Adjust the height as needed
                          ),
                        ),
                      ),
                      SizedBox(width: 20), // Add space between images
                      Expanded(
                        child: TextField(
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            hintText: 'Search', // Placeholder text
                            hintStyle: TextStyle(color: Colors.white70),
                            border: InputBorder.none, // Remove border
                            contentPadding: EdgeInsets.symmetric(vertical: 0),
                          ),
                        ),
                      ),
                      SizedBox(
                          width:
                              20), // Add space between text field and microphone icon
                      GestureDetector(
                        onTap: () {
                          // Implement microphone functionality
                          print('Microphone button clicked');
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: Image.asset(
                            'images/microphone-2.png', // Provide the path to your image
                            width: 25, // Adjust the width as needed
                            height: 25, // Adjust the height as needed
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                  height:
                      20), // Add some space between the search box and the bottom images
              ClipRRect(
                borderRadius: BorderRadius.circular(20), // Clip rounded corners
                child: Image.asset(
                  'images/Rectangle 3.png', // Provide the path to your image
                  width: MediaQuery.of(context)
                      .size
                      .width, // Use MediaQuery to get screen width
                  fit: BoxFit.cover,
                  height: 540, // Ensure the image covers the entire area
                ),
              ),
              SizedBox(
                  height:
                      22), // Add some space between the 'rectangle 3' image and the white box
              Container(
                height: 50,
                width: double.infinity,
                color: Colors.white,
              ),
            ],
          ),
          if (isChatButtonClicked)
            Positioned(
              left: 20,
              top: 170,
              right: 50,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ChatMessageWidget(
                      senderName: 'Ravi Sharma',
                      message: 'Hi sir! Need some gui .....',
                      date: '12 Apr',
                      middleImagePath: 'images/import.png',
                      rightImagePath: 'images/video.png',
                      isCallSection: false,
                    ),
                    ChatMessageWidget(
                      senderName: 'Priya Patel',
                      message: 'Are you ready for today’s party?',
                      date: '  31 Mar',
                      middleImagePath: 'images/import.png',
                      rightImagePath: 'images/video.png',
                      isCallSection: false,
                    ),
                    ChatMessageWidget(
                      senderName: 'John Doe',
                      message: 'Hey! How are you doing?',
                      date: '  18 Mar',
                      middleImagePath: 'images/import.png',
                      rightImagePath: 'images/video.png',
                      isCallSection: false,
                    ),
                    ChatMessageWidget(
                      senderName: 'Alice Johnson',
                      message: 'Can we meet tomorrow?',
                      date: '  10 Mar',
                      middleImagePath: 'images/import.png',
                      rightImagePath: 'images/video.png',
                      isCallSection: false,
                    ),
                    ChatMessageWidget(
                      senderName: 'David Clark',
                      message: 'Remember to bring the doc...',
                      date: '  29 Feb',
                      middleImagePath: 'images/import.png',
                      rightImagePath: 'images/video.png',
                      isCallSection: false,
                    ),
                    ChatMessageWidget(
                      senderName: 'Kaustubh Naik',
                      message: 'Remember to bring the doc...',
                      date: '  15 Feb',
                      middleImagePath: 'images/import.png',
                      rightImagePath: 'images/video.png',
                      isCallSection: false,
                    ),
                  ],
                ),
              ),
            ),
          if (isCallsButtonClicked)
            Positioned(
              left: 10,
              top: 170,
              right: 50,
              child: SingleChildScrollView(
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ChatMessageWidget(
                      senderName: 'Ravi Sharma',
                      message: '   12 April  10:15am ',
                      date: '',
                      middleImagePath: 'images/import.png',
                      rightImagePath: 'images/call-calling.png',
                      isCallSection: true,
                    ),
                    ChatMessageWidget(
                      senderName: 'Priya Patel',
                      message: '  28 March  11:45am ',
                      date: '',
                      middleImagePath: 'images/export.png',
                      rightImagePath: 'images/video.png',
                      isCallSection: true,
                    ),
                    ChatMessageWidget(
                      senderName: 'John Doe',
                      message: '  21 March  10:15pm ',
                      date: '',
                      middleImagePath: 'images/import.png',
                      rightImagePath: 'images/video.png',
                      isCallSection: true,
                    ),
                    ChatMessageWidget(
                      senderName: 'Alice Johnson',
                      message: '   14 March  01:35pm ',
                      date: '',
                      middleImagePath: 'images/export.png',
                      rightImagePath: 'images/call-calling.png',
                      isCallSection: true,
                    ),
                    ChatMessageWidget(
                      senderName: 'David Clark',
                      message: '   11 March  10:15am ',
                      date: '',
                      middleImagePath: 'images/export.png',
                      rightImagePath: 'images/video.png',
                      isCallSection: true,
                    ),
                    ChatMessageWidget(
                      senderName: 'Kaustubh Naik',
                      message: '   09 March  03:15am ',
                      date: '',
                      middleImagePath: 'images/import.png',
                      rightImagePath: 'images/call-calling.png',
                      isCallSection: true,
                    ),
                  ],
                ),
              ),
            ),
          Positioned(
            left: 20,
            top: 100,
            child: Container(
              width: 168,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  // Implement action for Chat button
                  print('Chat button clicked');
                  setState(() {
                    isChatButtonClicked = true; // Update the state
                    isCallsButtonClicked =
                        false; // Reset the calls button state
                  });
                },
                child: Text(
                  'Chat',
                  style: TextStyle(
                    color: Colors.black, // Text color
                    fontSize: 18,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    isChatButtonClicked
                        ? const Color.fromRGBO(236, 184, 0, 1)
                        : Color.fromRGBO(
                            217, 217, 217, 1), // Change color based on state
                  ), // Background color
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ), // Button shape
                ),
              ),
            ),
          ),
          Positioned(
            right: 20,
            top: 100,
            child: Container(
              width: 168,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  // Implement action for Calls button
                  print('Calls button clicked');
                  setState(() {
                    isCallsButtonClicked = true; // Update the state
                    isChatButtonClicked = false; // Reset the chat button state
                  });
                },
                child: Text(
                  'Calls',
                  style: TextStyle(
                    color: Colors.black, // Text color
                    fontSize: 18,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    isCallsButtonClicked
                        ? const Color.fromRGBO(236, 184, 0, 1)
                        : Color.fromRGBO(
                            217, 217, 217, 1), // Change color based on state
                  ), // Background color
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ), // Button shape
                ),
              ),
            ),
          ),
          Positioned(
            right: 20,
            top: 100,
            child: Container(
              width: 168,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  // Implement action for Calls button
                  print('Calls button clicked');
                  setState(() {
                    isCallsButtonClicked = true; // Update the state
                    isChatButtonClicked = false; // Reset the chat button state
                  });
                },
                child: Text(
                  'Calls',
                  style: TextStyle(
                    color: Colors.black, // Text color
                    fontSize: 18,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    isCallsButtonClicked
                        ? const Color.fromRGBO(236, 184, 0, 1)
                        : Color.fromRGBO(
                            217, 217, 217, 1), // Change color based on state
                  ), // Background color
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ), // Button shape
                ),
              ),
            ),
          ),
          Positioned(
            left: 20,
            top: 100,
            child: Container(
              width: 168,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  // Implement action for Chat button
                  print('Chat button clicked');
                  setState(() {
                    isChatButtonClicked = true; // Update the state
                    isCallsButtonClicked =
                        false; // Reset the calls button state
                  });
                },
                child: Text(
                  'Chat',
                  style: TextStyle(
                    color: Colors.black, // Text color
                    fontSize: 18,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    isChatButtonClicked
                        ? const Color.fromRGBO(236, 184, 0, 1)
                        : Color.fromRGBO(
                            217, 217, 217, 1), // Change color based on state
                  ), // Background color
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ), // Button shape
                ),
              ),
            ),
          ),
          Positioned(
            right: 20,
            top: 100,
            child: Container(
              width: 168,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  // Implement action for Calls button
                  print('Calls button clicked');
                  setState(() {
                    isCallsButtonClicked = true; // Update the state
                    isChatButtonClicked = false; // Reset the chat button state
                  });
                },
                child: Text(
                  'Calls',
                  style: TextStyle(
                    color: Colors.black, // Text color
                    fontSize: 18,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    isCallsButtonClicked
                        ? const Color.fromRGBO(236, 184, 0, 1)
                        : Color.fromRGBO(
                            217, 217, 217, 1), // Change color based on state
                  ), // Background color
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ), // Button shape
                ),
              ),
            ),
          ),
          Positioned(
            top: 615,
            left: -10,
            child: GestureDetector(
              onTap: () {
                // Implement navigation logic here
                print('Home image clicked');
                // Navigate to the respective page
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          HomePage()), // Replace HomePage with your desired page
                );
              },
              child: Image.asset(
                'images/home-2.png', // Provide the path to your image
                width: 100, // Adjust the width as needed
                height: 100, // Adjust the height as needed
              ),
            ),
          ),
          SizedBox(width: 20),
          Positioned(
            top: 615,
            left: 70,
            child: GestureDetector(
              onTap: () {
                // Implement navigation logic here
                print('Home image clicked');
                // Navigate to the respective page
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          HomePage()), // Replace HomePage with your desired page
                );
              },
              child: Image.asset(
                'images/share.png', // Provide the path to your image
                width: 100, // Adjust the width as needed
                height: 100, // Adjust the height as needed
              ),
            ),
          ),
          SizedBox(width: 20),
          Positioned(
            top: 615,
            left: 150,
            child: GestureDetector(
              onTap: () {
                // Implement navigation logic here
                print('Home image clicked');
                // Navigate to the respective page
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          HomePage()), // Replace HomePage with your desired page
                );
              },
              child: Image.asset(
                'images/teacher.png', // Provide the path to your image
                width: 100, // Adjust the width as needed
                height: 100, // Adjust the height as needed
              ),
            ),
          ),
          SizedBox(width: 20),
          Positioned(
            top: 615,
            left: 230,
            child: GestureDetector(
              onTap: () {
                // Implement navigation logic here
                print('Home image clicked');
                // Navigate to the respective page
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          HomePage()), // Replace HomePage with your desired page
                );
              },
              child: Image.asset(
                'images/messages-2.png', // Provide the path to your image
                width: 100, // Adjust the width as needed
                height: 100, // Adjust the height as needed
              ),
            ),
          ),
          SizedBox(width: 20),
          Positioned(
            top: 615,
            left: 310,
            child: GestureDetector(
              onTap: () {
                // Implement navigation logic here
                print('Home image clicked');
                // Navigate to the respective page
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          HomePage()), // Replace HomePage with your desired page
                );
              },
              child: Image.asset(
                'images/profile.png', // Provide the path to your image
                width: 100, // Adjust the width as needed
                height: 100, // Adjust the height as needed
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Text(
          'Welcome to Home Page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

class CallAssistancePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Stack(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              color: Colors.black54,
            ),
          ),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 1,
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Our mentors are currently busy assisting other students. \n We appreciate your patience!Please hold on, and we'll notify you as soon as a mentor becomes available. ",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    "Thank you for your understanding! ",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    width: 350, // Adjust the width as needed
                    child: ElevatedButton(
                      onPressed: () {
                        // Implement the action for the OK button
                        Navigator.of(context).pop();
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'OK',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white, // Set text color to white
                          ),
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF240046),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ChatMessageWidget extends StatelessWidget {
  final String senderName;
  final String message;
  final String date;
  final String middleImagePath;
  final String rightImagePath;
  final bool isCallSection;

  const ChatMessageWidget({
    Key? key,
    required this.senderName,
    required this.message,
    required this.date,
    required this.middleImagePath,
    required this.rightImagePath,
    required this.isCallSection,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Image.asset(
              'images/Ellipse 10.png',
              width: 50,
              height: 50,
            ),
          ),
          SizedBox(width: 10),
          if (isCallSection) ...[
            Image.asset(
              middleImagePath,
              width: 40,
              height: 40,
            ),
            SizedBox(width: 5), // Adjust spacing between images and text
          ],
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Navigate to desired page
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ChatScreen()));
                      },
                      child: Text(
                        senderName,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(width: 5), // Add some space between name and date
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          date,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  message,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),

          if (isCallSection) ...[
            SizedBox(width: 5),
            GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) => CallAssistancePage(),
                );
              },
              child: Image.asset(
                rightImagePath,
                width: 40,
                height: 40,
              ),
            ),
          ],
          SizedBox(width: 10), // Add some space after images
        ],
      ),
    );
  }
}

class ChatPage extends StatelessWidget {
  final String senderName;

  const ChatPage({
    Key? key,
    required this.senderName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(senderName),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [],
        ),
      ),
    );
  }
}
