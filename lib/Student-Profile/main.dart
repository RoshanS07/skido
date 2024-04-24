import 'package:flutter/material.dart';
import 'my_profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyProfile(), // Redirect to the first page
    );
  }
}
