import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:skido/Student-Wallet/add_money.dart';
import 'wallet_history.dart';

class SikdoWallet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
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
                'Skido Wallet',
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
      body: MyBody(),
    );
  }
}

class MyBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Positioned(
            top: -25,
            right: 10,
            left: 10,
            child: Stack(
              children: [
                Image(
                  image: AssetImage('images/Rectangle 47.png'),
                  width: MediaQuery.of(context).size.width,
                  height: 280,
                ),
                Positioned(
                  top: 130,
                  left: 110,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Available Balance \n       ₹10000',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 140,
            right: 10,
            left: 10,
            child: GestureDetector(
              onTap: () {
                // Navigate to the second page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddMoney()),
                );
              },
              child: Stack(
                children: [
                  Image(
                    image: AssetImage(
                        'images/Rectangle 48.png'), // Replace with your image path
                    width: MediaQuery.of(context).size.width,
                    height: 270,
                  ),
                  Positioned(
                    top: 120, // Adjust the top position as needed
                    left: 25, // Adjust the left position as needed
                    child: Row(
                      children: [
                        Text(
                          'Add Money',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(width: 210),
                        Text(
                          '+',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 455,
            right: 10,
            left: 10,
            child: GestureDetector(
              onTap: () {
                // Navigate to the second page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WalletHistory()),
                );
              },
              child: Stack(
                children: [
                  Image(
                    image: AssetImage(
                        'images/Rectangle 48.png'), // Replace with your image path
                    width: MediaQuery.of(context).size.width,
                    height: 270,
                  ),
                  Positioned(
                    top: 120, // Adjust the top position as needed
                    left: 25, // Adjust the left position as needed
                    child: Row(
                      children: [
                        Text(
                          'Wallet History',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(width: 185),
                        Text(
                          '+',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 520,
            right: 10,
            left: 10,
            child: GestureDetector(
              onTap: () {
                // Navigate to the second page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WalletHistory()),
                );
              },
              child: Stack(
                children: [
                  Image(
                    image: AssetImage(
                        'images/Rectangle 48.png'), // Replace with your image path
                    width: MediaQuery.of(context).size.width,
                    height: 270,
                  ),
                  Positioned(
                    top: 120, // Adjust the top position as needed
                    left: 25, // Adjust the left position as needed
                    child: Row(
                      children: [
                        Text(
                          'Terms & Condtion',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(width: 155),
                        Text(
                          '+',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 161,
            right: 10,
            left: 10,
            child: Stack(
              children: [
                Image(
                  image: AssetImage('images/Rectangle 44.png'),
                  width: MediaQuery.of(context).size.width,
                  height: 80,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 28.0, left: 25.0),
                  child: Text(
                    'Due Amount ₹00',
                    style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 30,
            right: 100,
            left: 100,
            child: Image(
              image: AssetImage('images/empty-wallet.png'),
              width: 71,
              height: 71,
            ),
          ),
          Positioned(
            top: 320, // Adjust the top position as needed
            left: 20,
            right: 20,
            child: GestureDetector(
              onTap: () {
                // Navigate to the respective page when tapped
              },
              child: Container(
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'images/Frame 8.png',
                        width: 28,
                        height: 28,
                      ),
                    ),
                    SizedBox(width: 5),
                    RichText(
                      text: TextSpan(
                        style: DefaultTextStyle.of(context).style,
                        children: <TextSpan>[
                          TextSpan(
                            text: 'PhonePe',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text:
                                '                                     ', // Add space between texts
                          ),
                          TextSpan(
                            text: 'Link account', // Combine both texts
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey[600],
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                // Navigate to the respective page
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LinkAccountPage()),
                                );
                              },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 380, // Adjust the top position as needed
            left: 20,
            right: 20,
            child: GestureDetector(
              onTap: () {
                // Navigate to the respective page when tapped
              },
              child: Container(
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'images/Frame 9.png',
                        width: 28,
                        height: 28,
                      ),
                    ),
                    SizedBox(width: 5),
                    RichText(
                      text: TextSpan(
                        style: DefaultTextStyle.of(context).style,
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Amazon Pay',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text:
                                '                              ', // Add space between texts
                          ),
                          TextSpan(
                            text: 'Link account', // Combine both texts
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey[600],
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                // Navigate to the respective page
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LinkAccountPage()),
                                );
                              },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 440, // Adjust the top position as needed
            left: 20,
            right: 20,
            child: GestureDetector(
              onTap: () {
                // Navigate to the respective page when tapped
              },
              child: Container(
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'images/Frame 10.png',
                        width: 28,
                        height: 28,
                      ),
                    ),
                    SizedBox(width: 5),
                    RichText(
                      text: TextSpan(
                        style: DefaultTextStyle.of(context).style,
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Mobikwik',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text:
                                '                                    ', // Add space between texts
                          ),
                          TextSpan(
                            text: 'Link account', // Combine both texts
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey[600],
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                // Navigate to the respective page
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LinkAccountPage()),
                                );
                              },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 500, // Adjust the top position as needed
            left: 20,
            right: 20,
            child: GestureDetector(
              onTap: () {
                // Navigate to the respective page when tapped
              },
              child: Container(
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'images/Frame 11.png',
                        width: 28,
                        height: 28,
                      ),
                    ),
                    SizedBox(width: 5),
                    RichText(
                      text: TextSpan(
                        style: DefaultTextStyle.of(context).style,
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Paytm',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text:
                                '                                          ', // Add space between texts
                          ),
                          TextSpan(
                            text: 'Link account', // Combine both texts
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey[600],
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                // Navigate to the respective page
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LinkAccountPage()),
                                );
                              },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LinkAccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Example background color
      appBar: AppBar(
        title: Text('Link Account'),
      ),
      body: Center(
        child: Text(
          'Link your account here.', // Example content
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}
