import 'package:flutter/material.dart';
import 'my_profile.dart';

class WalletHistory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Page',
      home: MyPage(),
    );
  }
}

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  bool creditedPressed = true;
  bool debitedPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF240046),
        title: Row(
          children: [
            Text(
              'Wallet History',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontFamily: 'Inter',
                fontSize: 24.0,
              ),
            ),
          ],
        ),
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
      ),
      body: Container(
        color: Color(0xFF240046),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(right: 10.0),
                      child: RectangleWidget(
                        child: SizedBox(
                          width: double
                              .infinity, // Set width to match the parent width
                          height: 50, // Set height to 50
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Search Transactions',
                              hintStyle: TextStyle(
                                  color: Colors.white.withOpacity(0.6)),
                              border: InputBorder.none, // Remove default border
                              prefixIcon:
                                  Icon(Icons.search, color: Colors.white),
                            ),
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                  RectangleWidget(
                    child: SizedBox(
                      width: 50, // Adjust width as needed
                      height: 50, // Adjust height as needed
                      child: ElevatedButton(
                        onPressed: () {
                          // Add onPressed functionality
                        },
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.zero, // Remove padding
                          shape: RoundedRectangleBorder(
                            // Adjust button shape if necessary
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          elevation: 0,
                          backgroundColor: Colors.transparent,
                        ),
                        child: Icon(Icons.filter_list, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.circular(15), // Adjust the radius as needed
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 5, bottom: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            creditedPressed = true;
                            debitedPressed = false;
                          });
                        },
                        style: ButtonStyle(
                          minimumSize: MaterialStateProperty.all(Size(170, 50)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          backgroundColor:
                              MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                              if (creditedPressed) {
                                return Colors.yellow;
                              }
                              return Colors.white;
                            },
                          ),
                        ),
                        child: Text(
                          'Credited',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Inter',
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            debitedPressed = true;
                            creditedPressed = false;
                          });
                        },
                        style: ButtonStyle(
                          minimumSize: MaterialStateProperty.all(Size(170, 50)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          backgroundColor:
                              MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                              if (debitedPressed) {
                                return Colors.yellow;
                              }
                              return Colors.white;
                            },
                          ),
                        ),
                        child: Text(
                          'Debited',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Inter',
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: RectangleWidget1(
                child: Container(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          SizedBox(height: 3),
                          // Row 1
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'January 04, 2024',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Inter',
                                      fontSize: 13.0,
                                    ),
                                  ),
                                  SizedBox(height: 10), // Date
                                  Row(
                                    children: [
                                      Icon(Icons.account_circle,
                                          size: 50), // Account icon
                                      SizedBox(width: 10),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Aparna Choudhari',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: 'Inter',
                                              fontSize: 15.0,
                                            ),
                                          ), // Name
                                          SizedBox(height: 8),
                                          Text(
                                            '123456789',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'Inter',
                                              fontSize: 13.0,
                                            ),
                                          ), // Account Number
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Text(
                                '\$ 450',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Inter',
                                  fontSize: 17.0,
                                ),
                              ), // Amount
                            ],
                          ),
                          SizedBox(height: 10),
                          Divider(
                            color: Colors.white, // Adjust color as needed
                            thickness: 1, // Adjust thickness as needed
                          ),
                          SizedBox(height: 5),
                          // Row 2
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'January 04, 2024',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Inter',
                                      fontSize: 13.0,
                                    ),
                                  ),
                                  SizedBox(height: 10), // Date
                                  Row(
                                    children: [
                                      Icon(Icons.account_circle,
                                          size: 50), // Account icon
                                      SizedBox(width: 10),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Aparna Choudhari',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: 'Inter',
                                              fontSize: 15.0,
                                            ),
                                          ), // Name
                                          SizedBox(height: 8),
                                          Text(
                                            '123456789',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'Inter',
                                              fontSize: 13.0,
                                            ),
                                          ), // Account Number
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Text(
                                '\$ 450',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Inter',
                                  fontSize: 17.0,
                                ),
                              ), // Amount
                            ],
                          ),
                          SizedBox(height: 5),
                          Divider(
                            color: Colors.white, // Adjust color as needed
                            thickness: 1, // Adjust thickness as needed
                          ),
                          SizedBox(height: 5),
                          // Row 3
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'January 04, 2024',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Inter',
                                      fontSize: 13.0,
                                    ),
                                  ),
                                  SizedBox(height: 10), // Date
                                  Row(
                                    children: [
                                      Icon(Icons.account_circle,
                                          size: 50), // Account icon
                                      SizedBox(width: 10),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Aparna Choudhari',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: 'Inter',
                                              fontSize: 15.0,
                                            ),
                                          ), // Name
                                          SizedBox(height: 8),
                                          Text(
                                            '123456789',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'Inter',
                                              fontSize: 13.0,
                                            ),
                                          ), // Account Number
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Text(
                                '\$ 450',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Inter',
                                  fontSize: 17.0,
                                ),
                              ), // Amount
                            ],
                          ),
                          SizedBox(height: 5),
                          Divider(
                            color: Colors.white, // Adjust color as needed
                            thickness: 1, // Adjust thickness as needed
                          ),
                          SizedBox(height: 5),
                          // Row 4
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'January 04, 2024',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Inter',
                                      fontSize: 13.0,
                                    ),
                                  ),
                                  SizedBox(height: 10), // Date
                                  Row(
                                    children: [
                                      Icon(Icons.account_circle,
                                          size: 50), // Account icon
                                      SizedBox(width: 10),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Aparna Choudhari',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: 'Inter',
                                              fontSize: 15.0,
                                            ),
                                          ), // Name
                                          SizedBox(height: 8),
                                          Text(
                                            '123456789',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'Inter',
                                              fontSize: 13.0,
                                            ),
                                          ), // Account Number
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Text(
                                '\$ 450',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Inter',
                                  fontSize: 17.0,
                                ),
                              ), // Amount
                            ],
                          ),
                          SizedBox(height: 5),
                          Divider(
                            color: Colors.white, // Adjust color as needed
                            thickness: 1, // Adjust thickness as needed
                          ),
                          SizedBox(height: 5),
                          // Row 5
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'January 04, 2024',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Inter',
                                      fontSize: 13.0,
                                    ),
                                  ),
                                  SizedBox(height: 10), // Date
                                  Row(
                                    children: [
                                      Icon(Icons.account_circle,
                                          size: 50), // Account icon
                                      SizedBox(width: 10),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Aparna Choudhari',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: 'Inter',
                                              fontSize: 15.0,
                                            ),
                                          ), // Name
                                          SizedBox(height: 8),
                                          Text(
                                            '123456789',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'Inter',
                                              fontSize: 13.0,
                                            ),
                                          ), // Account Number
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Text(
                                '\$ 450',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Inter',
                                  fontSize: 17.0,
                                ),
                              ), // Amount
                            ],
                          ),
                          // Add more rows as needed
                        ],
                      ),
                    ),
                  ),
                ),
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

  const RectangleWidget({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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

class RectangleWidget1 extends StatelessWidget {
  final Widget child;

  const RectangleWidget1({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF857198),
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
