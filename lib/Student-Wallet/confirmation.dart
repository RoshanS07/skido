import 'package:flutter/material.dart';
import 'package:skido/Student-Wallet/payment_options.dart';
import 'package:skido/Student-Wallet/skido_wallet.dart';

class Confirmation extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Confirmation> {
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
                MaterialPageRoute(builder: (context) => PaymentOptions()),
              );
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            width: 435,
            height: 767,
            decoration: BoxDecoration(
              color: Color(0xFF240046),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                  child: Container(
                    width: 358,
                    height: 189,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(22),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                          child: CircleAvatar(
                            radius: 40,
                            backgroundColor: Color(0xFF068548),
                            child: Padding(
                              padding: const EdgeInsets.all(3),
                              child: ClipOval(
                                child: SizedBox.fromSize(
                                  size: const Size.fromRadius(75),
                                  child: Image.asset('images/kk.png'),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 18, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    125, 0, 0, 0),
                                child: Icon(
                                  Icons.currency_rupee,
                                  color: Colors.black,
                                  size: 22,
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(2, 0, 0, 0),
                                child: Text(
                                  '10,000',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    color: Colors.black,
                                    fontSize: 22,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 175,
                          child: Divider(
                            thickness: 1.5,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          '₹ 1800 (GST) Deducted',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            letterSpacing: 0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 25, 0, 5),
                  child: Text(
                    'Added Successfully To Your SKIDO WALLET',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      color: Color(0xFFF9FBFD),
                      fontSize: 16,
                      letterSpacing: 0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(
                  width: 175,
                  child: Divider(thickness: 1.5, color: Colors.white),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                  child: Container(
                    width: 358,
                    height: 120,
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
                      borderRadius: BorderRadius.circular(22),
                      border: Border.all(
                        color: Colors.white,
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                child: Text(
                                  'Time:',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    color: Color(0xFFF9FBFD),
                                    fontSize: 16,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    225, 0, 0, 0),
                                child: Text(
                                  '09:41pm',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    color: Color(0xFFF9FBFD),
                                    fontSize: 16,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 13, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                child: Text(
                                  'Date:',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    color: Color(0xFFF9FBFD),
                                    fontSize: 16,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    202, 0, 0, 0),
                                child: Text(
                                  '23 Jan 2024',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    color: Color(0xFFF9FBFD),
                                    fontSize: 16,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 13, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                child: Text(
                                  'Transaction Id:',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    color: Color(0xFFF9FBFD),
                                    fontSize: 16,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(95, 0, 0, 0),
                                child: Text(
                                  '12345678912345',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    color: Color(0xFFF9FBFD),
                                    fontSize: 16,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 200, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 350,
                          height: 50, // Define a height for the container
                          decoration: BoxDecoration(
                            color: Color(0xFFF9FBFD),
                            borderRadius: BorderRadius.circular(
                                18), // Match button's border radius
                          ),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SikdoWallet()),
                              );
                            },
                            child: Text('Continue'),
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.black, // Text color

                              textStyle: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 20,
                                letterSpacing: 0,
                                fontWeight: FontWeight.w600,
                              ), // Make button background transparent
                              elevation: 3,
                              side: BorderSide(
                                color: Color(0xFFF9FBFD),
                                width: 1,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
