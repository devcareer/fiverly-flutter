import 'package:fiverly_flutter/features/carts_order/screen/carts.dart';
import 'package:flutter/material.dart';
<<<<<<< HEAD
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
=======
import 'package:fixing/features/authentication/sign_up.dart';
import 'features/authentication/forgot_password.dart';
import 'features/authentication/login.dart';
import 'package:fixing/features/successpages/success1.dart';

import 'features/successpages/success2.dart';
void main() {
  runApp(MyApp());
>>>>>>> 49e20ff6b8e300caa74c143caa68ad1de2c07835
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
        body:SuccessPage2(),
      ),
    );
  }
}
