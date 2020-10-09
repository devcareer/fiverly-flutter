import 'package:fiverly_flutter/cores/util/config.dart';
import 'package:fiverly_flutter/cores/util/screen_change.dart';
import 'package:fiverly_flutter/cores/util/style.dart';
import 'package:fiverly_flutter/features/shipping_details/screen/order_details.dart';
import 'package:fiverly_flutter/features/shipping_details/screen/personal_setting.dart';
import 'package:flutter/material.dart';

class OrderInformationDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text("Order Information",
            style: black(Config.xMargin(context, width: 5))),
        SizedBox(height: Config.yMargin(context, height: 4)),
        Row(
          children: [
            Expanded(
              flex: 2,
              child: Text("Shipping Address",
                  style: TextStyle(color: Color(0xff9B9B9B))),
            ),
            Expanded(
              flex: 3,
              child: Text(
                  "3 Newbridge Court ,Chino Hills, CA 91709, United States",
                  style: black(Config.xMargin(context, width: 3.95))),
            ),
          ],
        ),
        SizedBox(height: Config.yMargin(context, height: 4)),
        Row(
          children: [
            Expanded(
              flex: 2,
              child: Text("Payment methods",
                  style: TextStyle(color: Color(0xff9B9B9B))),
            ),
            Expanded(
              flex: 3,
              child: Row(
                children: [
                  Image.asset("images/mastercard.png"),
                  SizedBox(width: Config.xMargin(context, width: 4)),
                  RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: '****  ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: Config.xMargin(context, width: 4)),
                        ),
                        TextSpan(
                          text: ' ****  ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: Config.xMargin(context, width: 4)),
                        ),
                        TextSpan(
                          text: '  ****  ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: Config.xMargin(context, width: 4)),
                        ),
                        TextSpan(
                          text: ' 3947 ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: Config.xMargin(context, width: 4)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: Config.yMargin(context, height: 4)),
        Row(
          children: [
            Expanded(
              flex: 2,
              child: Text("Delivery method",
                  style: TextStyle(color: Color(0xff9B9B9B))),
            ),
            Expanded(
              flex: 3,
              child: Text("FedEx, 3 days, 15\$",
                  style: black(Config.xMargin(context, width: 4))),
            ),
          ],
        ),
        SizedBox(height: Config.yMargin(context, height: 4)),
        Row(
          children: [
            Expanded(
              flex: 2,
              child:
                  Text("Discount", style: TextStyle(color: Color(0xff9B9B9B))),
            ),
            Expanded(
              flex: 3,
              child: Text("10%, Personal promo code",
                  style: black(Config.xMargin(context, width: 4))),
            ),
          ],
        ),
        SizedBox(height: Config.yMargin(context, height: 4)),
        Row(
          children: [
            Expanded(
              flex: 2,
              child: Text("Total Discount",
                  style: TextStyle(color: Color(0xff9B9B9B))),
            ),
            Expanded(
              flex: 3,
              child: Text("133\$",
                  style: black(Config.xMargin(context, width: 4))),
            ),
          ],
        ),
        SizedBox(height: Config.yMargin(context, height: 5)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () => changeScreen(context, PersonalSetting()),
              child: Container(
                height: Config.yMargin(context, height: 8.5),
                width: Config.xMargin(context, width: 40),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(
                        Config.xMargin(context, width: 5))),
                child: Center(
                  child: Text(
                    "Reorder",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () => changeScreen(context, PersonalSetting()),
              child: Container(
                height: Config.yMargin(context, height: 8.5),
                width: Config.xMargin(context, width: 40),
                decoration: BoxDecoration(
                    color: Color(0xffDB3022),
                    borderRadius: BorderRadius.circular(
                        Config.xMargin(context, width: 5))),
                child: Center(
                  child: Text(
                    "Leave feedback",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        )
      ]),
    );
  }
}
