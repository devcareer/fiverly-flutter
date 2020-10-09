import 'package:fiverly_flutter/features/global/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/global/bottom_navigation/screen/bottom_navigation_bar.dart';
import 'features/shipping_details/bloc/my_order_counter_bloc.dart';

void main() async {
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider<MyOrderCounterBloc>(
        create: (context) => MyOrderCounterBloc(),
      ),
    ],
    child: MyApp(),
  ));
}

// void main() {
//   runApp(MyApp());
// >>>>>>> 49e20ff6b8e300caa74c143caa68ad1de2c07835
// }

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
