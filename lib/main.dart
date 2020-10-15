import 'package:fixing/features/global/app_color.dart';
import 'package:fixing/features/global/bottom_navigation/screen/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';




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
      home: BottomNavBarApp(),
    );
  }
}
