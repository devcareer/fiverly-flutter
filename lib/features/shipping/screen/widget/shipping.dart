import 'package:fixing/features/global/screen_app_bar.dart';
import 'package:fixing/features/global/app_color.dart';
import 'package:fixing/features/global/text_style.dart';
import 'package:fixing/features/global/ui_helper.dart';
import 'package:flutter/material.dart';

class Shipping extends StatefulWidget {
  @override
  _ShippingState createState() => _ShippingState();
}

class _ShippingState extends State<Shipping> {
  bool checkBox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: screenAppBar(
        screenIcon: Icon(Icons.chevron_left,color: Colors.black,),
          screenTitle: Text(
        "Shpping Addresses",
        style: kTitleStyle,
      )),
      body: SafeArea(
          child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
              margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
              height: screenHeight(context) / 5,
              width: double.infinity,
              child: Card(
                elevation: 1,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text("Jane Doe"), Text("Edit")],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Text(
                          "3 Newbridge Court \n Chino Hills, CA 91709, United States"),
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: checkBox,
                          onChanged: (bool newValue) {
                            setState(() {
                              checkBox = newValue;
                            });
                          },
                          activeColor: Colors.black,
                        ),
                        Text("Use as the shipping address")
                      ],
                    )
                  ],
                ),
              ));
        },
      )),
    );
  }
}
