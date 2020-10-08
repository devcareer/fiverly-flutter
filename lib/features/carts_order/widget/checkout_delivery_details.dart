import 'package:fiverly_flutter/cores/util/config.dart';
import 'package:fiverly_flutter/cores/util/screen_change.dart';
import 'package:fiverly_flutter/features/shipping_details/screen/payment_card.dart';
import 'package:flutter/material.dart';

class DeliveryDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      height: Config.yMargin(context, height: 35),
      // width: Config.xMargin(context, width: 100),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        _orderDetails("Order", "112\$"),
        _orderDetails("Delivery", "15\$"),
        _orderDetails("Summary", "125\$"),
        GestureDetector(
            onTap: () => changeScreen(context, PaymentCard()),
            child: Container(
              height: Config.yMargin(context, height: 10),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(
                  Config.xMargin(context, width: 10),
                ),
              ),
              child: Align(
                  alignment: Alignment.center,
                  child: Text("SUBMIT ORDER",
                      style: TextStyle(color: Colors.white))),
            ))
      ]),
    );
  }

  Widget _orderDetails(String title, String amount) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(color: Colors.black54),
          ),
          Text(
            amount,
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      );
}
