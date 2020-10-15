import 'package:fiverly_flutter/cores/util/config.dart';
import 'package:fiverly_flutter/cores/util/screen_change.dart';
import 'package:fiverly_flutter/cores/util/style.dart';
import 'package:fiverly_flutter/features/shipping_details/screen/order_details.dart';
import 'package:flutter/material.dart';

class MyOrderCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Config.yMargin(context, height: 32),
      margin: EdgeInsets.all(Config.yMargin(context, height: 0)),
      padding: EdgeInsets.all(Config.yMargin(context, height: 1)),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          Config.yMargin(context, height: 5),
        ),
      ),
      child: Card(
        elevation: 2,
        child: Padding(
          padding: EdgeInsets.all(Config.xMargin(context, width: 3)),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Order №1947034",
                      style: black(
                        Config.xMargin(context, width: 5),
                      ),
                    ),
                    Text("05-12-2019",
                        style: TextStyle(color: Color(0xff9B9B9B)))
                  ],
                ),
                Row(
                  children: [
                    Text("Tracking number:",
                        style: TextStyle(color: Color(0xff9B9B9B))),
                    SizedBox(width: Config.xMargin(context, width: 5)),
                    Text(
                      "IW3475453455",
                      style: black(
                        Config.xMargin(context, width: 4),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                        text: "Quantity:  ",
                        style: TextStyle(
                          color: Color(0xff9B9B9B),
                        ),
                      ),
                      TextSpan(
                          text: "  3",
                          style: black(Config.xMargin(context, width: 4)))
                    ])),
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                        text: "Total Amount:  ",
                        style: TextStyle(
                          color: Color(0xff9B9B9B),
                        ),
                      ),
                      TextSpan(
                          text: "  112\$",
                          style: black(Config.xMargin(context, width: 4)))
                    ])),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () => changeScreen(context, MyOrderDetails()),
                      child: Container(
                        height: Config.yMargin(context, height: 6),
                        width: Config.xMargin(context, width: 30),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(
                                Config.xMargin(context, width: 5))),
                        child: Center(
                          child: Text(
                            "Details",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    Text("Delivered",
                        style: TextStyle(
                            color: Color(0xff2AA952),
                            fontWeight: FontWeight.bold,
                            fontSize: Config.xMargin(context, width: 4.5)))
                  ],
                )
              ]),
        ),
      ),
    );
  }
}
