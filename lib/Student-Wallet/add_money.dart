import 'package:flutter/material.dart';
import 'package:skido/Student-Wallet/payment_options.dart';
import 'package:skido/Student-Wallet/skido_wallet.dart';

class AddMoney extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<AddMoney> {
  bool ispressed = false;
  bool ispressed100 = false;
  bool ispressed200 = false;
  bool ispressed500 = false;
  bool ispressed1000 = false;
  bool ispressed2000 = false;
  bool ispressed4000 = false;
  bool ispressed5000 = false;
  bool ispressed7000 = false;
  bool ispressed10000 = false;
  bool ispressedpay = false;
  String textholder = 'Amount';
  // To store user-entered options
  void clickFunction50() {
    setState(() {
      textholder = '  50'; // Update the textholder variable
    });
  }

  void clickFunction100() {
    setState(() {
      textholder = ' 100'; // Update the textholder variable
    });
  }

  void clickFunction200() {
    setState(() {
      textholder = ' 200'; // Update the textholder variable
    });
  }

  void clickFunction500() {
    setState(() {
      textholder = ' 500'; // Update the textholder variable
    });
  }

  void clickFunction1000() {
    setState(() {
      textholder = ' 1000'; // Update the textholder variable
    });
  }

  void clickFunction2000() {
    setState(() {
      textholder = ' 2000'; // Update the textholder variable
    });
  }

  void clickFunction4000() {
    setState(() {
      textholder = ' 4000'; // Update the textholder variable
    });
  }

  void clickFunction5000() {
    setState(() {
      textholder = ' 5000'; // Update the textholder variable
    });
  }

  void clickFunction7000() {
    setState(() {
      textholder = ' 7000'; // Update the textholder variable
    });
  }

  void clickFunction10000() {
    setState(() {
      textholder = ' 10000'; // Update the textholder variable
    });
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
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SikdoWallet()),
              );
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            width: 432,
            height: 789,
            decoration: BoxDecoration(
              color: Color(0xFF240046),
            ),
            child: Stack(
              children: [
                Stack(
                  children: [
                    Stack(
                      children: [
                        Column(mainAxisSize: MainAxisSize.max, children: [
                          Stack(
                            children: [
                              Stack(
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            30, 18, 0, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(12, 0, 0, 0),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                child: Image.asset(
                                                  'images/IMG_1247-removebg-preview.png',
                                                  width: 62,
                                                  height: 78,
                                                  fit: BoxFit.contain,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 10),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                8, 0, 0, 0),
                                                    child: Text(
                                                      'Available Balance',
                                                      style: TextStyle(
                                                        fontFamily: 'Inter',
                                                        color:
                                                            Color(0xFFF9FBFD),
                                                        fontSize: 16,
                                                        letterSpacing: 0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            -1, 0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 10, 85, 0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Text(
                                                            '₹00',
                                                            style: TextStyle(
                                                              fontFamily:
                                                                  'Inter',
                                                              color: Color(
                                                                  0xFFF9FBFD),
                                                              fontSize: 18,
                                                              letterSpacing: 0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
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
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 10, 0, 0),
                                        child: Container(
                                          width: 344,
                                          height: 178,
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              colors: [
                                                Color.fromARGB(
                                                    114, 255, 255, 255),
                                                Color.fromARGB(
                                                    0, 255, 255, 255),
                                              ],
                                              stops: [0, 1],
                                              begin:
                                                  AlignmentDirectional(0, -1),
                                              end: AlignmentDirectional(0, 1),
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            border: Border.all(
                                              color: Color(0xFFF9FBFD),
                                              width: 2,
                                            ),
                                          ),
                                          child: Stack(
                                            children: [
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                12, 0, 0, 10),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(120,
                                                                      50, 0, 0),
                                                          child: Icon(
                                                            Icons
                                                                .currency_rupee_outlined,
                                                            color: Color(
                                                                0x8EF7F9FA),
                                                            size: 18,
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      52, 0, 0),
                                                          child: Text(
                                                            textholder,
                                                            style: TextStyle(
                                                              fontFamily:
                                                                  'Inter',
                                                              color: Color(
                                                                  0x8AF9FBFD),
                                                              fontSize: 18,
                                                              letterSpacing: 0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 250,
                                                    child: Divider(
                                                      height: 8,
                                                      thickness: 5,
                                                      color: Color(0xE6B517BB),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 5, 0, 0),
                                                    child: Text(
                                                      '*18% GST Charges Applicable',
                                                      style: TextStyle(
                                                        fontFamily: 'Inter',
                                                        color:
                                                            Color(0xFFF9FBFD),
                                                        fontSize: 14,
                                                        letterSpacing: 0,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 130, 0, 0),
                                                child: Container(
                                                  width: 350,
                                                  height: 100,
                                                  decoration: BoxDecoration(
                                                    color: Color.fromARGB(
                                                        128, 255, 255, 255),
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      bottomLeft:
                                                          Radius.circular(20),
                                                      bottomRight:
                                                          Radius.circular(20),
                                                      topLeft:
                                                          Radius.circular(0),
                                                      topRight:
                                                          Radius.circular(0),
                                                    ),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                20, 15, 0, 0),
                                                    child: Text(
                                                      ' Add a minimum of ₹200 for a seamless experience',
                                                      textAlign:
                                                          TextAlign.justify,
                                                      style: TextStyle(
                                                          fontFamily: 'Inter',
                                                          color:
                                                              Color(0xFFF9FBFD),
                                                          fontSize: 13,
                                                          letterSpacing: 0,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 20, 0, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(25, 0, 0, 0),
                                              child: SizedBox(
                                                width: 160,
                                                child: ElevatedButton(
                                                  onPressed: () {
                                                    clickFunction50();
                                                    setState(() {
                                                      ispressed = !ispressed;
                                                      ispressedpay = true;
                                                    });
                                                  },
                                                  child: Text('50'),
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    backgroundColor: ispressed
                                                        ? Colors.white
                                                        : Color.fromARGB(
                                                            128, 255, 255, 255),
                                                    foregroundColor: ispressed
                                                        ? Color(0xFF240046)
                                                        : Colors
                                                            .white, // Background color

                                                    textStyle: TextStyle(
                                                      fontFamily: 'Inter',
                                                      fontSize: 18,
                                                      letterSpacing: 0,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                    elevation: 3,
                                                    side: BorderSide(
                                                      color: Color(0xFFF9FBFD),
                                                      width: 1,
                                                    ),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              3),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(25, 0, 0, 0),
                                              child: SizedBox(
                                                width: 160,
                                                child: ElevatedButton(
                                                  onPressed: () {
                                                    clickFunction100();
                                                    setState(() {
                                                      ispressed100 =
                                                          !ispressed100;
                                                      ispressedpay = true;
                                                    });
                                                  },
                                                  child: Text('100'),
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    backgroundColor:
                                                        ispressed100
                                                            ? Colors.white
                                                            : Color.fromARGB(
                                                                128,
                                                                255,
                                                                255,
                                                                255),
                                                    foregroundColor: ispressed100
                                                        ? Color(0xFF240046)
                                                        : Colors
                                                            .white, // Background color

                                                    textStyle: TextStyle(
                                                      fontFamily: 'Inter',
                                                      fontSize: 18,
                                                      letterSpacing: 0,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                    elevation: 3,
                                                    side: BorderSide(
                                                      color: Color(0xFFF9FBFD),
                                                      width: 1,
                                                    ),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              3),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      25, 0, 0, 0),
                                  child: SizedBox(
                                    width: 160,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: ispressed200
                                            ? Colors.white
                                            : Color.fromARGB(
                                                128, 255, 255, 255),
                                        foregroundColor: ispressed200
                                            ? Color(0xFF240046)
                                            : Colors.white, // Background color
                                        textStyle: TextStyle(
                                          fontFamily: 'Inter',
                                          fontSize: 18,
                                          letterSpacing: 0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        elevation:
                                            3, // Correctly placed inside styleFrom
                                        side: BorderSide(
                                          color: Color(0xFFF9FBFD),
                                          width: 1,
                                        ),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(3),
                                        ),
                                      ),
                                      onPressed: () {
                                        clickFunction200();
                                        setState(() {
                                          ispressed200 = !ispressed200;
                                          ispressedpay = true;
                                        });
                                      },
                                      child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            SizedBox(height: 6),
                                            Text(
                                              '        200    ',
                                              style: TextStyle(
                                                fontFamily: 'Inter',
                                                fontSize: 18,
                                                letterSpacing: 0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            SizedBox(height: 6),
                                            Ink.image(
                                              image: AssetImage(
                                                'images/ff.png',
                                              ),
                                              height: 40,
                                              width: 25,
                                            ),
                                          ]),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      25, 0, 0, 0),
                                  child: SizedBox(
                                    width: 160,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: ispressed500
                                            ? Colors.white
                                            : Color.fromARGB(
                                                128, 255, 255, 255),
                                        foregroundColor: ispressed500
                                            ? Color(0xFF240046)
                                            : Colors.white, // Background color
                                        textStyle: TextStyle(
                                          fontFamily: 'Inter',
                                          fontSize: 18,
                                          letterSpacing: 0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        elevation:
                                            3, // Correctly placed inside styleFrom
                                        side: BorderSide(
                                          color: Color(0xFFF9FBFD),
                                          width: 1,
                                        ),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(3),
                                        ),
                                      ),
                                      onPressed: () {
                                        clickFunction500();
                                        setState(() {
                                          ispressed500 = !ispressed500;
                                          ispressedpay = true;
                                        });
                                      },
                                      child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            SizedBox(height: 6),
                                            Text(
                                              '        500    ',
                                              style: TextStyle(
                                                fontFamily: 'Inter',
                                                fontSize: 18,
                                                letterSpacing: 0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            SizedBox(height: 6),
                                            Ink.image(
                                              image: AssetImage(
                                                'images/ff.png',
                                              ),
                                              height: 40,
                                              width: 25,
                                            ),
                                          ]),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      25, 0, 0, 0),
                                  child: SizedBox(
                                    width: 160,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: ispressed1000
                                            ? Colors.white
                                            : Color.fromARGB(
                                                128, 255, 255, 255),
                                        foregroundColor: ispressed1000
                                            ? Color(0xFF240046)
                                            : Colors.white, // Background color
                                        textStyle: TextStyle(
                                          fontFamily: 'Inter',
                                          fontSize: 18,
                                          letterSpacing: 0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        elevation:
                                            3, // Correctly placed inside styleFrom
                                        side: BorderSide(
                                          color: Color(0xFFF9FBFD),
                                          width: 1,
                                        ),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(3),
                                        ),
                                      ),
                                      onPressed: () {
                                        clickFunction1000();
                                        setState(() {
                                          ispressed1000 = !ispressed1000;
                                          ispressedpay = true;
                                        });
                                      },
                                      child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            SizedBox(height: 6),
                                            Text(
                                              '       1000   ',
                                              style: TextStyle(
                                                fontFamily: 'Inter',
                                                fontSize: 18,
                                                letterSpacing: 0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            SizedBox(height: 6),
                                            Ink.image(
                                              image: AssetImage(
                                                'images/ff.png',
                                              ),
                                              height: 40,
                                              width: 25,
                                            ),
                                          ]),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      25, 0, 0, 0),
                                  child: SizedBox(
                                    width: 160,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        clickFunction2000();
                                        setState(() {
                                          ispressed2000 = !ispressed2000;
                                          ispressedpay = true;
                                        });
                                      },
                                      child: Text('2000'),
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: ispressed2000
                                            ? Colors.white
                                            : Color.fromARGB(
                                                128, 255, 255, 255),
                                        foregroundColor: ispressed2000
                                            ? Color(0xFF240046)
                                            : Colors.white, // Background color

                                        textStyle: TextStyle(
                                          fontFamily: 'Inter',
                                          fontSize: 18,
                                          letterSpacing: 0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        elevation: 3,
                                        side: BorderSide(
                                          color: Color(0xFFF9FBFD),
                                          width: 1,
                                        ),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(3),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      25, 0, 0, 0),
                                  child: SizedBox(
                                    width: 160,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        clickFunction4000();
                                        setState(() {
                                          ispressed4000 = !ispressed4000;
                                          ispressedpay = true;
                                        });
                                      },
                                      child: Text('4000'),
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: ispressed4000
                                            ? Colors.white
                                            : Color.fromARGB(
                                                128, 255, 255, 255),
                                        foregroundColor: ispressed4000
                                            ? Color(0xFF240046)
                                            : Colors.white, // Background color

                                        textStyle: TextStyle(
                                          fontFamily: 'Inter',
                                          fontSize: 18,
                                          letterSpacing: 0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        elevation: 3,
                                        side: BorderSide(
                                          color: Color(0xFFF9FBFD),
                                          width: 1,
                                        ),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(3),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      25, 0, 0, 0),
                                  child: SizedBox(
                                    width: 160,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        clickFunction5000();
                                        setState(() {
                                          ispressed5000 = !ispressed5000;
                                          ispressedpay = true;
                                        });
                                      },
                                      child: Text('5000'),
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: ispressed5000
                                            ? Colors.white
                                            : Color.fromARGB(
                                                128, 255, 255, 255),
                                        foregroundColor: ispressed5000
                                            ? Color(0xFF240046)
                                            : Colors.white, // Background color

                                        textStyle: TextStyle(
                                          fontFamily: 'Inter',
                                          fontSize: 18,
                                          letterSpacing: 0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        elevation: 3,
                                        side: BorderSide(
                                          color: Color(0xFFF9FBFD),
                                          width: 1,
                                        ),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(3),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(5, 15, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20, 0, 0, 0),
                                  child: SizedBox(
                                    width: 160,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        clickFunction7000();
                                        setState(() {
                                          ispressed7000 = !ispressed7000;
                                          ispressedpay = true;
                                        });
                                      },
                                      child: Text('7000'),
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: ispressed7000
                                            ? Colors.white
                                            : Color.fromARGB(
                                                128, 255, 255, 255),
                                        foregroundColor: ispressed7000
                                            ? Color(0xFF240046)
                                            : Colors.white, // Background color

                                        textStyle: TextStyle(
                                          fontFamily: 'Inter',
                                          fontSize: 18,
                                          letterSpacing: 0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        elevation: 3,
                                        side: BorderSide(
                                          color: Color(0xFFF9FBFD),
                                          width: 1,
                                        ),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(3),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      25, 0, 0, 0),
                                  child: SizedBox(
                                    width: 160,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        clickFunction10000();
                                        setState(() {
                                          ispressed10000 = !ispressed10000;
                                          ispressedpay = true;
                                        });
                                      },
                                      child: Text('10000'),
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: ispressed10000
                                            ? Colors.white
                                            : Color.fromARGB(
                                                128, 255, 255, 255),
                                        foregroundColor: ispressed10000
                                            ? Color(0xFF240046)
                                            : Colors.white, // Background color

                                        textStyle: TextStyle(
                                          fontFamily: 'Inter',
                                          fontSize: 18,
                                          letterSpacing: 0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        elevation: 3,
                                        side: BorderSide(
                                          color: Color(0xFFF9FBFD),
                                          width: 1,
                                        ),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(3),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      75, 8, 0, 0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.asset(
                                      'images/ff.png',
                                      width: 25,
                                      height: 25,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5, 15, 0, 8),
                                  child: Text(
                                    ' *Suggested amount to topup',
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      color: Color(0xFFF9FBFD),
                                      fontSize: 16,
                                      letterSpacing: 0,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(30, 10, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    width: 340,
                                    height:
                                        50, // Define a height for the container
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          Color.fromARGB(114, 225, 225, 255),
                                          Color.fromARGB(0, 225, 225, 255),
                                        ],
                                        stops: [0, 1],
                                        begin: AlignmentDirectional(0, -1),
                                        end: AlignmentDirectional(
                                            0, 1), // Example gradient colors
                                      ),
                                      borderRadius: BorderRadius.circular(
                                          18), // Match button's border radius
                                    ),
                                    child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  PaymentOptions()),
                                        );
                                      },
                                      child: Text('Proceed To Add Money'),
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: ispressedpay
                                            ? Colors.white
                                            : Color.fromARGB(
                                                128, 255, 255, 255),
                                        foregroundColor: ispressedpay
                                            ? Color(0xFF240046)
                                            : Colors.white,

                                        textStyle: TextStyle(
                                          fontFamily: 'Inter',
                                          fontSize: 18,
                                          letterSpacing: 0,
                                          fontWeight: FontWeight.w500,
                                        ), // Make button background transparent
                                        elevation: 3,
                                        side: BorderSide(
                                          color: Color(0xFFF9FBFD),
                                          width: 1,
                                        ),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(18),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ))
                        ]),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
