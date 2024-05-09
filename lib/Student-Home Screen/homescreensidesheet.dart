import 'package:flutter/material.dart';
import 'homescreen.dart';

class maindrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Scaffold(
            body: SafeArea(
                child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => WalletHistory()));
                    },
                    child: Container(
                        width: 428,
                        height: 800,
                        decoration: BoxDecoration(),
                        child: Stack(children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              'images/Rectangle 54.png',
                              width: 398,
                              height: 780,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-0.97, 0),
                            child: Container(
                              width: 288,
                              height: 816,
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(-1, -1),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          24, 30, 0, 0),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(6),
                                        child: Image.asset(
                                          'images/SKIDO final logo Inverted 1.png',
                                          width: 85,
                                          height: 35,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        24, 31, 0, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          child: Image.asset(
                                            'images/teacher.png',
                                            width: 21,
                                            height: 21,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        TextButton(
                                          style: TextButton.styleFrom(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(15, 0, 0, 0),
                                              textStyle: TextStyle(
                                                fontSize: 16,
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w600,
                                                color: Color(0xFFF1c1c1c),
                                              )),
                                          child: Text('Mentors'),
                                          onPressed: () {
                                            print('Button pressed...');
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        24, 0, 0, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          child: Image.asset(
                                            'images/wallet.png',
                                            width: 21,
                                            height: 21,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        TextButton(
                                          style: TextButton.styleFrom(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(15, 0, 0, 0),
                                              textStyle: TextStyle(
                                                fontSize: 16,
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w600,
                                                color: Color(0xFFF1c1c1c),
                                              )),
                                          child: Text('Wallet History'),
                                          onPressed: () {
                                            print('Button pressed...');
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        24, 0, 0, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          child: Image.asset(
                                            'images/note-2.png',
                                            width: 21,
                                            height: 21,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        TextButton(
                                          style: TextButton.styleFrom(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(15, 0, 0, 0),
                                              textStyle: TextStyle(
                                                fontSize: 16,
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w600,
                                                color: Color(0xFFF1c1c1c),
                                              )),
                                          child: Text('Blogs'),
                                          onPressed: () {
                                            print('Button pressed...');
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        24, 0, 0, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          child: Image.asset(
                                            'images/gift.png',
                                            width: 21,
                                            height: 21,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        TextButton(
                                          style: TextButton.styleFrom(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(15, 0, 0, 0),
                                              textStyle: TextStyle(
                                                fontSize: 16,
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w600,
                                                color: Color(0xFFF1c1c1c),
                                              )),
                                          child: Text('Shop'),
                                          onPressed: () {
                                            print('Button pressed...');
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        24, 0, 0, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          child: Image.asset(
                                            'images/setting-2.png',
                                            width: 21,
                                            height: 21,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        TextButton(
                                          style: TextButton.styleFrom(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(15, 0, 0, 0),
                                              textStyle: TextStyle(
                                                fontSize: 16,
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w600,
                                                color: Color(0xFFF1c1c1c),
                                              )),
                                          child: Text('Settings'),
                                          onPressed: () {
                                            print('Button pressed...');
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        24, 0, 0, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          child: Image.asset(
                                            'images/discount-shape.png',
                                            width: 21,
                                            height: 21,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        TextButton(
                                          style: TextButton.styleFrom(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(15, 0, 0, 0),
                                              textStyle: TextStyle(
                                                fontSize: 16,
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w600,
                                                color: Color(0xFFF1c1c1c),
                                              )),
                                          child: Text('Refer & Earn'),
                                          onPressed: () {
                                            print('Button pressed...');
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        24, 335, 0, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          child: Image.asset(
                                            'images/logout.png',
                                            width: 21,
                                            height: 21,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        TextButton(
                                          style: TextButton.styleFrom(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(15, 0, 0, 0),
                                              textStyle: TextStyle(
                                                fontSize: 16,
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w600,
                                                color: Color(0xFFF1c1c1c),
                                              )),
                                          child: Text('Logout'),
                                          onPressed: () {
                                            print('Button pressed...');
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ]))))));
  }
}
