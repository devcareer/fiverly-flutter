import 'package:fixing/features/global/app_color.dart';
import 'package:fixing/features/shipping/screen/shipping_screen.dart';
import 'package:fixing/features/shipping/screen/widget/shipping.dart';
import 'package:flutter/material.dart';

import 'features/global/test_function.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter_fiverly',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: AppColor.primaryColor,
        accentColor: AppColor.backgroundColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Shipping(),
    );
  }
}
