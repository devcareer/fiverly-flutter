import 'package:fiverly_flutter/cores/util/config.dart';
import 'package:fiverly_flutter/features/carts_order/widget/checkout_delivery_details.dart';
import 'package:fiverly_flutter/features/carts_order/widget/checkout_delivery_section.dart';
import 'package:fiverly_flutter/features/carts_order/widget/checkout_payment_section.dart';
import 'package:flutter/material.dart';

class CheckOutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      appBar: AppBar(
        title: Text("Checkout"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(Config.xMargin(context, width: 3)),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Shopping address",
                  style: TextStyle(
                      fontSize: Config.xMargin(context, width: 4.5),
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: Config.condition(context)
                      ? Config.yMargin(context, height: 4)
                      : Config.xMargin(context, width: 4),
                ),
                Container(
                  height:
                      MediaQuery.of(context).orientation == Orientation.portrait
                          ? Config.yMargin(context, height: 20)
                          : Config.xMargin(context, width: 25),
                  color: Colors.white,
                  child: Padding(
                    padding:
                        EdgeInsets.all(Config.xMargin(context, width: 2.5)),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Jane Doe",
                                  style: TextStyle(
                                    fontSize: Config.xMargin(context, width: 6),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: null,
                                  child: Text("change",
                                      style: TextStyle(
                                        color: Colors.red,
                                        fontSize:
                                            Config.xMargin(context, width: 4),
                                      )),
                                )
                              ]),
                          SizedBox(
                            height: Config.yMargin(context, height: 2),
                          ),
                          Text("Newbridge Court"),
                          SizedBox(
                            height: Config.yMargin(context, height: 1.5),
                          ),
                          Text("Chino Hills, 91709, United States")
                        ]),
                  ),
                ),
                CheckoutPayment(),
                DeliveryMethod(),
                DeliveryDetails(),
              ]),
        ),
      ),
    );
  }
}
