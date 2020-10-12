import 'package:fiverly_flutter/features/global/ui_helper.dart';
// import 'package:fixing/features/global/ui_helper.dart';
import 'package:flutter/material.dart';

import 'app_color.dart';
import 'text_style.dart';

// >>>>>>>>>>>>>>>>>>>>>>>> TextField Design >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
Container screenTextField({BuildContext context, textLabel}) {
  return Container(
    height: screenHeight(context) / 10,
    margin: EdgeInsets.only(top: 8.0),
    child: Card(
      child: Center(
        child: TextFormField(
          decoration: InputDecoration(
              labelStyle: TextStyle(color: Colors.grey),
              contentPadding: EdgeInsets.only(left: 8.0),
              fillColor: Colors.white,
              labelText: textLabel,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none),
        ),
      ),
    ),
  );
}

// >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>Card Design >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
Container cardDesign(BuildContext context) {
  return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
      height: screenHeight(context) / 5,
      width: double.infinity,
      child: Card(
        elevation: 1,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
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
                  value: true,
                  onChanged: (bool newValue) {},
                  activeColor: Colors.black,
                ),
                Text("Use as the shipping address")
              ],
            )
          ],
        ),
      ));
}
// >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> Button Red Config >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

Container screenbuttonRed(BuildContext context) {
  return Container(
    width: double.infinity,
    margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 15.0),
    height: screenHeight(context) / 14,
    alignment: Alignment.center,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50), color: AppColor.primaryColor),
    child: Text(
      "Add",
      style: kTextWithColorWhite,
    ),
  );
}
