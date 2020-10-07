
import 'package:flutter/material.dart';

// import 'features/global/bottom_navigation/screen/bottom_navigation_bar.dart';
import 'features/global/test_function.dart';

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
      home: fajar(),
    );
  }
}
