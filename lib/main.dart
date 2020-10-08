import 'package:fixing/features/carts_order/screen/carts.dart';
import 'package:flutter/material.dart';
import 'package:fixing/features/authentication/sign_up.dart';
import 'features/authentication/forgot_password.dart';
import 'features/authentication/login.dart';
import 'package:fixing/features/successpages/success1.dart';
import 'package:fixing/features/searchpages/virtual_search.dart';
import 'features/successpages/success2.dart';
import 'package:fixing/features/searchpages/taking_photo.dart';
import 'package:fixing/features/searchpages/virtualsearchfinding.dart';
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
        body:SearchFinding(),
      ),
    );
  }
}
