import 'package:fiverly_flutter/cores/util/config.dart';
import 'package:fiverly_flutter/cores/util/style.dart';
import 'package:flutter/material.dart';

class OrderDetailsProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.symmetric(vertical: Config.yMargin(context, height: 1.5)),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius:
              BorderRadius.circular(Config.xMargin(context, width: 4))),
      height: Config.yMargin(context, height: 24),
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(Config.xMargin(context, width: 4)),
                  bottomLeft:
                      Radius.circular(Config.xMargin(context, width: 4))),
              child: Image.asset(
                "images/image.png",
                width: Config.xMargin(context, width: 30),
                height: Config.yMargin(context, height: 24),
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: Config.xMargin(context, width: 4),
                  vertical: Config.xMargin(context, width: 3)),
              width: Config.xMargin(context, width: 60),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sport Dress",
                      style: TextStyle(
                          fontSize: Config.xMargin(context, width: 4),
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Mango",
                      style: TextStyle(
                          fontSize: Config.xMargin(context, width: 4),
                          fontWeight: FontWeight.bold,
                          color: Color(0xff9B9B9B)),
                    ),
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'color:  ',
                                  style: TextStyle(color: Color(0xff9B9B9B)),
                                ),
                                TextSpan(
                                  text: '  Gray',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: Config.xMargin(context, width: 5.0),
                          ),
                          RichText(
                            text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'Size:  ',
                                  style: TextStyle(color: Color(0xff9B9B9B)),
                                ),
                                TextSpan(
                                  text: ' L',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ]),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Units: ',
                                style: TextStyle(color: Color(0xff9B9B9B)),
                              ),
                              TextSpan(
                                text: '  1',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                        Text("51\$",
                            style: black(Config.xMargin(context, width: 4)))
                      ],
                    ),
                  ]),
            ),
          ]),
    );
  }
}
