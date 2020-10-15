import 'package:fiverly_flutter/features/global/app_color.dart';
import 'package:fiverly_flutter/features/global/screen_app_bar.dart';
import 'package:fiverly_flutter/features/global/text_style.dart';
import 'package:fiverly_flutter/features/global/ui_helper.dart';
import 'package:fiverly_flutter/features/global/widget_design.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: screenAppBar(
          screenTitle: Text(
            "Categories",
            style: kTitleStyle,
          )),
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          screenbuttonRed(context),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Choose Category",
              style: kTextWithColorWhite.copyWith(color: Colors.grey),
            ),
          ),
          Container(
            height: 500,
            child: ListView.builder(
                itemCount: 8,
                shrinkWrap: true ,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Shoe",
                          style: kTextWithColorWhite.copyWith(
                            fontSize: 15,
                              color: Colors.black),
                        ),
                      ),
                      Divider()
                    ],
                  );
                }),
          )
        ],
      )),
    );
  }
}
