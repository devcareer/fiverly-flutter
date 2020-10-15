import 'package:fiverly_flutter/cores/util/config.dart';
import 'package:fiverly_flutter/cores/util/style.dart';
import 'package:fiverly_flutter/features/shipping_details/components/order_details_information.dart';
import 'package:fiverly_flutter/features/shipping_details/components/order_details_product.dart';
import 'package:flutter/material.dart';

class MyOrderDetails extends StatelessWidget {
  final listProducts = List.generate(4, (index) => index);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      appBar: AppBar(
        title: Text("Order Details"),
        actions: [IconButton(icon: Icon(Icons.search), onPressed: null)],
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.all(Config.xMargin(context, width: 3)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: Config.yMargin(context, height: 3)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Order №1947034",
                  style: black(Config.xMargin(context, width: 5)),
                ),
                Text(
                  "05-12-2019",
                  style: TextStyle(
                    color: Color(0xff9B9B9B),
                  ),
                )
              ],
            ),
            SizedBox(height: Config.yMargin(context, height: 4)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                    text: "Tracking Number:  ",
                    style: TextStyle(
                      color: Color(0xff9B9B9B),
                    ),
                  ),
                  TextSpan(
                      text: "  IW3475453455",
                      style: black(Config.xMargin(context, width: 4)))
                ])),
                Text("Delivered",
                    style: TextStyle(
                        color: Color(0xff2AA952),
                        fontWeight: FontWeight.bold,
                        fontSize: Config.xMargin(context, width: 4.5)))
              ],
            ),
            SizedBox(height: Config.yMargin(context, height: 4)),
            Text("3 items", style: black(Config.xMargin(context, width: 5))),
            SizedBox(height: Config.yMargin(context, height: 3)),
            Column(
                children:
                    listProducts.map((e) => OrderDetailsProducts()).toList()),
            SizedBox(height: Config.yMargin(context, height: 3)),
            OrderInformationDetails(),
          ],
        ),
      )),
    );
  }
}
