import 'package:flutter/material.dart';
import 'my_profile.dart';

class Notifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notifications',
      theme: ThemeData(
        // Applying the background color
        backgroundColor: Color(0xFF240046),
      ),
      home: MyNotificationsPage(),
    );
  }
}

class MyNotificationsPage extends StatefulWidget {
  @override
  _MyNotificationsPageState createState() => _MyNotificationsPageState();
}

class _MyNotificationsPageState extends State<MyNotificationsPage> {
  // Map to store the toggle switch states (true/false) for each notification setting
  final Map<String, bool> notificationSettings = {
    'General Notification': true,
    'Sound': true,
    'Vibrate': true,
    'App updates': true,
    'Bill Reminder': true,
    'Promotion': true,
    'Discount Available': true,
    'Live Classes Remainder': true,
    'Mentor Online': true,
  };

  // Function to build a row for each notification setting
  Widget _buildNotificationRow({required String title}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 16.0, color: Colors.white), // White text color
        ),
        Switch(
          value: notificationSettings[title] ?? false,
          onChanged: (value) {
            setState(() {
              notificationSettings[title] = value;
            });
          },
          activeColor:
              Colors.yellow, // Setting the toggle switch color to yellow
          inactiveTrackColor:
              Colors.white, // Setting the inactive track color to white
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Adding AppBar with leading icon (arrow back) and title
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
          'Notifications',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontFamily: 'Inter',
            fontSize: 24.0,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Color(0xFF240046), // Setting the background color
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Common box
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                      color: Color(0xFFC0C0C0), // Border color set to white
                      width: 1.0, // Border width
                    ),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFF492b65),
                        Color(0xFF240046),
                      ],
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
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Common',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.white, // White text color
                        ),
                      ),
                      SizedBox(height: 10.0),
                      _buildNotificationRow(title: 'General Notification'),
                      _buildNotificationRow(title: 'Sound'),
                      _buildNotificationRow(title: 'Vibrate'),
                    ],
                  ),
                ),
                SizedBox(height: 20.0),

                // Application & Services Update box
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                      color: Color(0xFFC0C0C0), // Border color set to white
                      width: 1.0, // Border width
                    ),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFF492b65),
                        Color(0xFF240046),
                      ],
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
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Application & Services Update',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.white, // White text color
                        ),
                      ),
                      SizedBox(height: 10.0),
                      _buildNotificationRow(title: 'App updates'),
                      _buildNotificationRow(title: 'Bill Reminder'),
                      _buildNotificationRow(title: 'Promotion'),
                      _buildNotificationRow(title: 'Discount Available'),
                      _buildNotificationRow(title: 'Live Classes Remainder'),
                    ],
                  ),
                ),
                SizedBox(height: 20.0),

                // Chat Settings box
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                      color: Color(0xFFC0C0C0), // Border color set to white
                      width: 1.0, // Border width
                    ),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFF492b65),
                        Color(0xFF240046),
                      ],
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
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Chat Settings',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.white, // White text color
                        ),
                      ),
                      SizedBox(height: 10.0),
                      _buildNotificationRow(title: 'General Notification'),
                      _buildNotificationRow(title: 'Sound'),
                      _buildNotificationRow(title: 'Vibrate'),
                      _buildNotificationRow(title: 'Mentor Online'),
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
