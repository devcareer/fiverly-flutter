import 'package:fiverly_flutter/features/carts_order/screen/carts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter_fiverly',
      theme: ThemeData(
        primaryColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Carts(),
    );
  }
}
