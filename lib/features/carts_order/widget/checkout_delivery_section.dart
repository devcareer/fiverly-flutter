import 'package:fiverly_flutter/cores/util/config.dart';
import 'package:flutter/material.dart';

class DeliveryMethod extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deliveryMethods = List.generate(6, (index) => index);
    return Container(
      height: Config.condition(context)
          ? Config.yMargin(context, height: 25)
          : Config.xMargin(context, width: 35),
      // width: Config.xMargin(context, width: 10),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          "Delivery Method",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: Config.textSize(context, 4),
          ),
        ),
        SizedBox(height: Config.xMargin(context, width: 2)),
        Container(
          // width: Config.xMargin(context, width: 100),
          height: Config.yMargin(context, height: 20),
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: deliveryMethods.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: Config.xMargin(context, width: 1)),
                  width: Config.xMargin(context, width: 35),
                  height: Config.yMargin(context, height: 35),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        Config.xMargin(context, width: 2),
                      ),
                      color: Colors.white),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset("images/dhl.png",
                            height: Config.xMargin(context, width: 6),
                            fit: BoxFit.cover),
                        Text(
                          "2 - 3 days",
                          style: TextStyle(color: Colors.black54),
                        )
                      ]),
                );
              }),
        )
      ]),
    );
  }
}
