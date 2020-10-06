import 'package:fixing/features/carts_order/screen/carts.dart';
import 'package:flutter/material.dart';
import 'package:fixing/features/authentication/sign_up.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter_fiverly',
      theme: ThemeData(
        primaryColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(  
        backgroundColor: Color(0xffe5e5e5),
        body: SignUp(),
      ),
    );
  }
}
