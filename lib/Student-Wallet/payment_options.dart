import 'package:flutter/material.dart';
import 'package:skido/Student-Wallet/debit_card.dart';
import 'package:skido/Student-Wallet/upi.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/services.dart';
import 'credit_card.dart';

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

class PaymentOptions extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<PaymentOptions> {
  bool isUPISelected = false; // To track if UPI payment option is selected
  bool isUPIIDSelected =
      false; // To track if UPI ID/Mobile number payment option is selected
  bool isCreditCardSelected =
      false; // To track if credit card payment option is selected
  bool isDebitCardSelected =
      false; // To track if debit card payment option is selected

  // Example of TextEditingController
  final TextEditingController _textEditingController = TextEditingController();

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
    if (value == true) {
      // Navigate to the CreditCard page when the credit card option is selected
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => UPI()),
      );
    }
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
    if (value == true) {
      // Navigate to the CreditCard page when the credit card option is selected
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => UPI()),
      );
    }
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

    if (value == true) {
      // Navigate to the CreditCard page when the credit card option is selected
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => CreditCard()),
      );
    }
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
    if (value == true) {
      // Navigate to the CreditCard page when the credit card option is selected
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => DebitCard()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
              // Implement back button functionality here
            },
          ),
        ),

        body: CustomScrollView(
          physics: NeverScrollableScrollPhysics(),
          slivers: [
            SliverFillViewport(
              delegate: SliverChildListDelegate(
                [
                  Container(
                    width: 432,
                    height: 930,
                    decoration: BoxDecoration(
                      color: Color(0xFF240046),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          left: 5,
                          right: 5,
                          top: 25, // Adjust the position as needed
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
                                    color: Colors
                                        .white, // Set border color to white
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(
                                      20), // Add border radius
                                ),
                                padding: EdgeInsets.all(20.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment
                                      .spaceBetween, // Align children to the start and end of the row
                                  children: <Widget>[
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                              fontSize: 16.0,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                    Spacer(), // Add a spacer to push the amount to the right
                                    Text(
                                      '₹11,800',
                                      style: TextStyle(
                                          fontSize: 24.0,
                                          color: Colors.white60),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 20,
                          right: 20,
                          top: 170,
                          child: Container(
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                              fontSize: 18,
                                              color: Colors.black87),
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
                                            onChanged:
                                                handleCreditCardSelection,
                                            activeColor: Color(
                                                0xFF006400), // Set active color to forest green
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 20,
                          right: 20,
                          top: 240,
                          child: Container(
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
                                    height:
                                        0), // Add spacing between containers
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                              fontSize: 18,
                                              color: Colors.black87),
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
                                                0xFF006400), // Set active color to forest green
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 20,
                          right: 20,
                          top: 310,
                          child: Container(
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset(
                                          'images/upi1.png', // Replace 'your_image.png' with the path to your image asset
                                          width: 70,
                                          height: 25,
                                        ),
                                        SizedBox(width: 1),
                                        Text(
                                          ' UPI',
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.black87),
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
                                            groupValue: isUPISelected,
                                            onChanged: handleUPISelection,
                                            activeColor: Color(
                                                0xFF006400), // Set active color to forest green
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
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
