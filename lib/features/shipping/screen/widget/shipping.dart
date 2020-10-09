import 'package:fixing/features/global/screen_app_bar.dart';
import 'package:fixing/features/global/app_color.dart';
import 'package:fixing/features/global/text_style.dart';
import 'package:fixing/features/global/ui_helper.dart';
import 'package:fixing/features/global/widget_design.dart';
import 'package:fixing/features/shipping/screen/add_shipping_address.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class Shipping extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: screenAppBar(
          screenIcon: Icon(
            Icons.chevron_left,
            color: Colors.black,
          ),
          screenTitle: Text(
            "Shpping Addresses",
            style: kTitleStyle,
          )),
      body: SafeArea(
          child: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) {
          return cardDesign(context);
        },
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, PageTransition(type: PageTransitionType.topToBottom, child: AddShippingAddress()));
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Colors.black,
      ),
    );
  }

}
