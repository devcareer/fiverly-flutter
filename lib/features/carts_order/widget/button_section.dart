import 'package:fiverly_flutter/cores/util/config.dart';
import 'package:flutter/material.dart';

class TotalButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: Config.xMargin(context, width: 100),
        padding: EdgeInsets.symmetric(
            horizontal: Config.xMargin(context, width: 4),
            vertical: Config.xMargin(context, width: 4)),
        child: Column(children: [
          Padding(
            padding:
                EdgeInsets.only(bottom: Config.yMargin(context, height: 2)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Total amount"),
                Text("344\$", style: TextStyle(fontWeight: FontWeight.bold))
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(Config.yMargin(context, height: 2)),
            child: GestureDetector(
                onTap: null,
                child: Container(
                  padding: EdgeInsets.all(Config.yMargin(context, height: 1)),
                  height: Config.yMargin(context, height: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.red,
                  ),
                  child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "CHECK OUT",
                        style: TextStyle(color: Colors.white),
                      )),
                )),
          )
        ]));
  }
}
