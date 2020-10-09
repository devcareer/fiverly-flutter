import 'package:fixing/features/global/app_color.dart';
import 'package:fixing/features/global/screen_app_bar.dart';
import 'package:fixing/features/global/text_style.dart';
import 'package:fixing/features/global/ui_helper.dart';
import 'package:fixing/features/global/widget_design.dart';
import 'package:flutter/material.dart';

class AddShippingAddress extends StatelessWidget {
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
        "Adding Shipping Address",
        style: kTitleStyle,
      )),
      body: SingleChildScrollView(
        child: Container(
            color: AppColor.backgroundColor,
            child: Column(
              children: [
                // >>>>>>>>>>>>>>>>>>>>>>Form Layout>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                Form(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        screenTextField(
                            context: context, textLabel: "Full Name"),
                        screenTextField(context: context, textLabel: "Address"),
                        screenTextField(context: context, textLabel: "City"),
                        screenTextField(
                            context: context,
                            textLabel: "State/Province/Region"),
                        screenTextField(
                            context: context,
                            textLabel: "Zip Code (Postal Code)"),
                        screenTextField(context: context, textLabel: "Country"),
                      ],
                    ),
                  ),
                ),
                // >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> Button config >>>>>>>>>>>>>>>>>>>>>>>>>>>

                screenbuttonRed(context)
              ],
            )),
      ),
    );
  }

 
}
