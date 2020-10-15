import 'package:fiverly_flutter/cores/util/config.dart';
import 'package:flutter/material.dart';

class CheckoutPayment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Config.condition(context)
          ? Config.yMargin(context, height: 25)
          : Config.xMargin(context, width: 20),
      child: Column(children: [
        SizedBox(
          height: Config.condition(context)
              ? Config.yMargin(context, height: 4)
              : Config.xMargin(context, width: 4),
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            "Payment",
            style: TextStyle(
                fontSize: Config.xMargin(context, width: 4),
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: Config.condition(context)
                ? Config.yMargin(context, height: 6)
                : Config.xMargin(context, width: 6),
          ),
          GestureDetector(
            onTap: null,
            child: Text("change",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: Config.xMargin(context, width: 4),
                )),
          )
        ]),
        Row(children: [
          Image.asset(
            "images/mastercard.png",
            height: Config.xMargin(context, width: 15),
            width: Config.xMargin(context, width: 15),
            // fit: BoxFit.cover,
          ),
          SizedBox(
            width: Config.xMargin(context, width: 15),
          ),
          RichText(
            text: TextSpan(
              text: '**** ',
              style: DefaultTextStyle.of(context).style,
              children: <TextSpan>[
                TextSpan(
                  text: '  ****  ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: '  ****  ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: '  3947',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ])
      ]),
    );
  }
}
