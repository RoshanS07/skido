import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:skido/Student-Wallet/confirmation.dart';
import 'package:skido/Student-Wallet/payment_options.dart';
import 'package:url_launcher/url_launcher.dart'; // Import url_launcher package
import 'package:flutter/services.dart';
import 'dart:async';

class UPI extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<UPI> {
  // Define a GlobalKey to access the bottom sheet from anywhere in the widget tree
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  List<String> selectedOptions = []; // To store user-entered options
  bool isUPISelected = false; // To track if UPI payment option is selected
  bool isUPIIDSelected =
      false; // To track if UPI ID/Mobile number payment option is selected
  bool isCreditCardSelected =
      false; // To track if credit card payment option is selected
  bool isDebitCardSelected =
      false; // To track if debit card payment option is selected

  // Function to launch the respective app
  void launchApp(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  // Function to handle UPI radio button selection
  void handleUPISelection(bool? value) {
    setState(() {
      isUPISelected = value!;
      if (value == true) {
        isUPIIDSelected = false; // Unselect UPI ID/Mobile number
        isCreditCardSelected = false; // Unselect credit card
        isDebitCardSelected = false; // Unselect debit card
      }
    });
  }

  // Function to handle UPI ID/Mobile number radio button selection
  void handleUPIIDSelection(bool? value) {
    setState(() {
      isUPIIDSelected = value!;
      if (value == true) {
        isUPISelected = false; // Unselect UPI
        isCreditCardSelected = false; // Unselect credit card
        isDebitCardSelected = false; // Unselect debit card
      }
    });
  }

  // Function to handle credit card radio button selection
  void handleCreditCardSelection(bool? value) {
    setState(() {
      isCreditCardSelected = value!;
      if (value == true) {
        isUPISelected = false; // Unselect UPI
        isUPIIDSelected = false; // Unselect UPI ID/Mobile number
        isDebitCardSelected = false; // Unselect debit card
      }
    });
  }

  // Function to handle debit card radio button selection
  void handleDebitCardSelection(bool? value) {
    setState(() {
      isDebitCardSelected = value!;
      if (value == true) {
        isUPISelected = false; // Unselect UPI
        isUPIIDSelected = false; // Unselect UPI ID/Mobile number
        isCreditCardSelected = false; // Unselect credit card
      }
    });
  }

  // Function to handle showing the bottom sheet
  void _showBottomSheet() {
    _scaffoldKey.currentState?.showBottomSheet(
      (context) => Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        width: MediaQuery.of(context).size.width *
            1.0, // Set width to 90% of the screen width
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: 30, bottom: 25), // Adjust the bottom padding as needed
              child: Text(
                'Your payment is being processed',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            _BeatAnimation(), // Add the BeatAnimation widget here
            SizedBox(height: 20),
            // Increase space between circle and text
            Text(
              'Please wait for confirmation',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              width: 160,
              height: 2,
              color: Colors.black, // Color of the line
              margin:
                  EdgeInsets.symmetric(vertical: 10), // Adjust margin as needed
            ),

            // Add more items or widgets as needed
          ],
        ),
      ),
    );

    // Initiate the blur effect after the bottom sheet is shown
    Future.delayed(Duration(milliseconds: 100), () {
      _scaffoldKey.currentState?.setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        key: _scaffoldKey, // Assign the scaffold key
        backgroundColor: Color(0xFF240046), // Set the background
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            'Wallet Recharge',
            style: TextStyle(
              fontFamily: 'Inter',
              color: Color(0xFFF9FBFD),
              fontSize: 20,
              letterSpacing: 0,
              fontWeight: FontWeight.w500,
            ),
          ),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_sharp,
              color: Color(0xFFF9FBFD),
              size: 26,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PaymentOptions()),
              );
            },
          ),
        ),

        body: SingleChildScrollView(
          child: Container(
            width: 432,
            height: 950,
            decoration: BoxDecoration(
              color: Color(0xFF240046),
            ),
            child: Stack(
              children: [
                SizedBox(height: 20.0),
                Positioned(
                  left: 5,
                  right: 5,
                  top: 0,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 10.0), // Add horizontal padding
                    child: RectangleWidget(
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(114, 255, 255, 255),
                              Color.fromARGB(0, 255, 255, 255),
                            ],
                            stops: [0, 1],
                            begin: AlignmentDirectional(0, -1),
                            end: AlignmentDirectional(0, 1),
                          ),
                          border: Border.all(
                            color: Colors.white, // Set border color to white
                            width: 2,
                          ),
                          borderRadius:
                              BorderRadius.circular(20), // Add border radius
                        ),
                        padding: EdgeInsets.all(20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment
                              .spaceBetween, // Align children to the start and end of the row
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Select option to add money',
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                SizedBox(height: 10.0),
                                Text(
                                  '         ₹10,000+ ₹1800 (GST)',
                                  style: TextStyle(
                                      fontSize: 16.0, color: Colors.white),
                                ),
                              ],
                            ),
                            Spacer(), // Add a spacer to push the amount to the right
                            Text(
                              '₹11,800',
                              style: TextStyle(
                                  fontSize: 24.0, color: Colors.white60),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 10,
                  right: 0,
                  top: 90,
                  // Adjusted top position
                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start, // Align children to the left
                    children: [
                      SizedBox(
                          height: 25), // Add spacing between text and icons
                      Text(
                        'Pay using apps', // New text description
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment
                            .start, // Align children to the left
                        children: [
                          Icon(
                            Icons.launch_outlined,
                            color: Color(0xFFF9FBFD),
                            size: 26,
                          ),
                          SizedBox(width: 5),
                          Text(
                            'You will be redirected to your UPI app',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                          height: 22), // Add spacing between text and icons
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () =>
                                launchApp('gpay://'), // Launch Google Pay app
                            child: Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                color: Color(0xFF240046),
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: Colors.white,
                                  width: 2,
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'images/g.jpeg', // Replace with your image asset path
                                    width: 60,
                                    height: 60,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          GestureDetector(
                            onTap: () =>
                                launchApp('phonepe://'), // Launch PhonePe app
                            child: Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                color: Color(0xFF240046),
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: Colors.white,
                                  width: 2,
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'images/phonepay.jpeg', // Replace with your image asset path
                                    width: 60,
                                    height: 60,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          GestureDetector(
                            onTap: () =>
                                launchApp('paytm://'), // Launch Paytm app
                            child: Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                color: Color(0xFF240046),
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: Colors.white,
                                  width: 2,
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'images/paytm.png', // Replace with your image asset path
                                    width: 60,
                                    height: 60,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      // Add spacing between containers
                      Container(
                        width: 320,
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            // Text for Google Pay
                            Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 0), // Add left padding
                                  child: Text(
                                    'Google Pay',
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                ),
                                SizedBox(height: 10),
                              ],
                            ),
                            // Text for PhonePe
                            Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 50), // Add left padding
                                  child: Text(
                                    'PhonePe',
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                ),
                                SizedBox(height: 10),
                              ],
                            ),
                            // Text for Paytm
                            Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 50), // Add left padding
                                  child: Text(
                                    'Paytm',
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                ),
                                SizedBox(height: 10),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                          height:
                              10), // Add spacing between text and containers
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'images/up.png', // Replace 'your_image.png' with the path to your image asset
                                width: 30,
                                height: 30,
                              ),
                              SizedBox(width: 10),
                              Text(
                                'Pay with other UPI apps',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Transform.scale(
                                scale: 1.6, // Adjust the scale factor as needed
                                child: Radio(
                                  value: true,
                                  groupValue: isUPISelected,
                                  onChanged: handleUPISelection,
                                  activeColor: Color(
                                      0xFF006400), // Set active color to green
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          'Pay with UPI or mobile number', // New text description
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 15,
                            horizontal: 1), // Add padding around the container
                        child: Container(
                          width: 390,
                          height: 50,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Color(
                                0xFF240046), // Background color same as page
                            border: Border.all(
                              color: Colors.white, // Border color is white
                              width: 2,
                            ),
                            borderRadius:
                                BorderRadius.circular(0), // Add border radius
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.launch_outlined,
                                color: Color(0xFFF9FBFD),
                                size: 26,
                              ),
                              SizedBox(width: 5),
                              Flexible(
                                child: Text(
                                  'You will receive a payment request on your UPI app',
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.white,
                                  ),
                                  overflow: TextOverflow
                                      .ellipsis, // Handle text overflow
                                  maxLines: 2, // Limit text to 2 lines
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment
                            .start, // Align children to the left
                        children: [
                          Icon(
                            Icons.launch_outlined,
                            color: Color(0xFFF9FBFD),
                            size: 26,
                          ),
                          SizedBox(width: 5),
                          Text(
                            'You will be redirected to your UPI app',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15), // Add spacing between containers
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'images/up.png', // Replace 'your_image.png' with the path to your image asset
                                width: 30,
                                height: 30,
                              ),
                              SizedBox(width: 10),
                              Text(
                                ' UPI ID/ Mobile number',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Transform.scale(
                                scale: 1.6, // Adjust the scale factor as needed
                                child: Radio(
                                  value: true,
                                  groupValue: isUPIIDSelected,
                                  onChanged: handleUPIIDSelection,
                                  activeColor: Color(
                                      0xFF006400), // Set active color to green
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 2, horizontal: 7),
                        child: TextFormField(
                          decoration: InputDecoration(
                            floatingLabelAlignment:
                                FloatingLabelAlignment.center,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            labelText: 'UPI ID/Mobile number',
                            labelStyle:
                                TextStyle(fontSize: 19, color: Colors.white),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                          height:
                              20), // Add spacing between text field and buttons
                      Container(
                        width: 390,
                        height: 52, // Adjust the height as needed
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.white, // Background color
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            color: Colors.white, // Border color
                            width: 2,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 0),
                            // Add spacing between containers
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      'images/vsa.jpg', // Replace 'your_image.png' with the path to your image asset
                                      width: 70,
                                      height: 32,
                                    ),
                                    SizedBox(width: 1),
                                    Text(
                                      'Credit Card',
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.black87),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Transform.scale(
                                      scale:
                                          1.6, // Adjust the scale factor as needed
                                      child: Radio(
                                        value: true,
                                        groupValue: isCreditCardSelected,
                                        onChanged: handleCreditCardSelection,
                                        activeColor: Color(
                                            0xFF006400), // Set active color to green
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                          height:
                              10), // Add spacing between text field and buttons
                      Container(
                        width: 390,
                        height: 52, // Adjust the height as needed
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.white, // Background color
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            color: Colors.white, // Border color
                            width: 2,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                                height: 0), // Add spacing between containers
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      'images/rupay.jpeg', // Replace 'your_image.png' with the path to your image asset
                                      width: 70,
                                      height: 25,
                                    ),
                                    SizedBox(width: 1),
                                    Text(
                                      'Debit Card',
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.black87),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Transform.scale(
                                      scale:
                                          1.6, // Adjust the scale factor as needed
                                      child: Radio(
                                        value: true,
                                        groupValue: isDebitCardSelected,
                                        onChanged: handleDebitCardSelection,
                                        activeColor: Color(
                                            0xFF006400), // Set active color to green
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 20),
                      Column(
                        mainAxisAlignment: MainAxisAlignment
                            .spaceEvenly, // Align buttons evenly horizontally
                        children: [
                          // Wrap Button 1 in a Column
                          Column(
                            children: [
                              // Add the container above the elevated button
                              Container(
                                width: 380,
                                height: 65,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color.fromARGB(114, 255, 255, 255),
                                      Color.fromARGB(0, 255, 255, 255),
                                    ],
                                  ),
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 1,
                                  ),
                                ),
                                child: ElevatedButton(
                                  onPressed: _showBottomSheet,
                                  // Add functionality as needed
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors
                                        .transparent, // Set button color to transparent
                                    elevation: 0, // Remove button elevation
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          20), // Add border radius to button
                                    ),
                                    minimumSize: Size(
                                        390, 55), // Set minimum button size
                                  ),
                                  child: Text(
                                    'Proceed To Add Money',
                                    style: TextStyle(
                                      color:
                                          Colors.white, // Set button text color
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 50),
                            ],
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
      ),
    );
  }
}

class RectangleWidget extends StatelessWidget {
  final Widget child;

  RectangleWidget({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF240046),
      ),
      child: child,
    );
  }
}

class _BeatAnimation extends StatefulWidget {
  @override
  __BeatAnimationState createState() => __BeatAnimationState();
}

class __BeatAnimationState extends State<_BeatAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  bool showCheckMark = false;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
    _controller.forward();

    // Set up a timer to show the check mark after 2 seconds of animation completion
    Timer(Duration(seconds: 2), () {
      setState(() {
        showCheckMark = true;
      });
    });
    Timer(Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Confirmation()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.green, // Border color for the outer circle
              width: 5,
            ),
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              // BackdropFilter(
              //   filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
              //   child: Container(
              //     color: Colors.transparent, // Adjust opacity for shading effect
              //   ),
              // ),

              Container(
                width: 50 + _controller.value * 40, // Expand the inner circle
                height: 60 + _controller.value * 50, // Expand the inner circle
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.green, // Border color for the inner circle
                    width: 3,
                  ),
                  color: Colors.lightGreen.withOpacity(_controller.value *
                      0.5), // Light green background during animation
                ),

                child: Center(
                  child: AnimatedOpacity(
                    opacity: showCheckMark ? 1.0 : 0.0,
                    duration: Duration(milliseconds: 300),
                    child: Icon(
                      Icons.check,
                      color: Colors.green,
                      size: 50,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

class UpperCaseTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    return TextEditingValue(
      text: newValue.text.toUpperCase(),
      selection: newValue.selection,
    );
  }
}
