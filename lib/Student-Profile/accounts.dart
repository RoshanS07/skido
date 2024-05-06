import 'package:flutter/material.dart';
import 'my_profile.dart';
import 'dart:ui';

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Remove the debug banner
      debugShowCheckedModeBanner: false,
      title: 'com',
      theme: ThemeData(
        // use Material 3
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      home: AccountsPage(),
    );
  }
}

class AccountsPage extends StatelessWidget {
  const AccountsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF240046),
      appBar: AppBar(
        backgroundColor: Color(0xFF240046),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white, size: 35),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyProfile()),
            );
          },
        ),
        title: Text(
          'Accounts',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontFamily: 'Inter',
            fontSize: 24.0,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 20),
                Text(
                  'Account Information',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0),
                  child: RectangleWidget(
                    child: Container(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'Name:',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white),
                              ),
                              SizedBox(width: 20),
                              Text(
                                'John Doe',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'Mobile Number:',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white),
                              ),
                              SizedBox(width: 20),
                              Text(
                                '+1234567890',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'Account Status:',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white),
                              ),
                              SizedBox(width: 20),
                              Text(
                                'Active',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Manage Account',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                Text(
                  'Deactivate Account',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Text(
                  '\u2022 Temporarily deactivate your account.',
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ),
                SizedBox(height: 5),
                Text(
                  '\u2022 Your profile and data will be hidden.',
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ),
                SizedBox(height: 5),
                Text(
                  '\u2022 You can reactivate it anytime by logging in again.',
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: RectangleWidget(
                    child: ElevatedButton(
                      onPressed: () => _anotherButtonPressed(context),
                      child: const Text(
                        'Deactivate Account',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Delete Account',
                  style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5.0),
                Text(
                  '\u2022 Permanently delete your account.',
                  style: TextStyle(fontSize: 12.0, color: Colors.white),
                ),
                SizedBox(height: 5.0),
                Text(
                  '\u2022 All data, including courses and progress, will be lost.',
                  style: TextStyle(fontSize: 12.0, color: Colors.white),
                ),
                SizedBox(height: 5.0),
                Text(
                  '\u2022 This action is irreversible.',
                  style: TextStyle(fontSize: 12.0, color: Colors.white),
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: RectangleWidget(
                    child: ElevatedButton(
                      onPressed: () => _show(context),
                      child: const Text(
                        'Delete Account',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Additional Information',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                Text(
                  'Data Privacy',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Text(
                  '\u2022 Learn more about how we handle your data in our Terms & Conditions.',
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ),
                SizedBox(height: 20),
                Text(
                  'Support',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Text(
                  '\u2022 Need Help? For assistance, contact our support team.',
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ),
                SizedBox(height: 20)
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _show(BuildContext ctx) {
    showModalBottomSheet(
      elevation: 10,
      backgroundColor: Colors.transparent, // Make background transparent
      context: ctx,
      builder: (ctx) => Positioned.fill(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            color: Colors.black.withOpacity(0.5),
            child: Container(
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(0),
                  bottomRight: Radius.circular(0),
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    width: 29,
                    child: Divider(thickness: 6, color: Colors.grey),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Are you sure you want to permanently \ndelete your account?\n*This action is irreversible,all your data,\nincluding courses and progress,will be\nlost.',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 19,
                        letterSpacing: 0,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  Container(
                    width: 385,
                    height: 50,
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('DELETE ACCOUNT'),
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Color(0xFF240046),
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                        textStyle: TextStyle(color: Colors.white, fontSize: 18),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 385,
                    height: 50,
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('CANCEL'),
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor:
                            Color(0xFF240046), // Use backgroundColor instead
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                        textStyle: TextStyle(color: Colors.white, fontSize: 18),
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
        ),
      ),
    );
  }

  void _anotherButtonPressed(BuildContext ctx) {
    showModalBottomSheet(
      elevation: 10,
      backgroundColor: Colors.white,
      context: ctx,
      builder: (ctx) => Positioned.fill(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            color: Colors.black.withOpacity(0.5),
            child: Container(
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(0),
                  bottomRight: Radius.circular(0),
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    width: 29,
                    child: Divider(thickness: 6, color: Colors.grey),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '   Are you sure you want to deactivate  your   \n   account temporarily?   \n  *This will hide your profile and data until\n   you reactivate it.',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 19,
                        letterSpacing: 0,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  Container(
                    width: 385,
                    height: 50,
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('DEACTIVATE ACCOUNT'),
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Color(0xFF240046),
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                        textStyle: TextStyle(color: Colors.white, fontSize: 18),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 385,
                    height: 50,
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('CANCEL'),
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Color(0xFF240046),
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                        textStyle: TextStyle(color: Colors.white, fontSize: 18),
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
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF492b65),
            Color(0xFF240046),
          ],
        ),
        border: Border.all(
          color: Color(0xFFC0C0C0),
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0x80000000),
            spreadRadius: 2,
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: child,
    );
  }
}
