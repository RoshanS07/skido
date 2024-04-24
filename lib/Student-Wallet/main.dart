import 'package:flutter/material.dart';
import 'skido_wallet.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SikdoWallet(), // Redirect to the first page
    );
  }
}
