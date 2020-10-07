import 'package:fiverly_flutter/cores/util/config.dart';
import 'package:fiverly_flutter/cores/util/screen_change.dart';
import 'package:fiverly_flutter/cores/util/style.dart';
import 'package:fiverly_flutter/features/shipping_details/screen/shipping_address.dart';
import 'package:flutter/material.dart';

class AddShippingAddress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe5e5e5),
      appBar: AppBar(
        title: Text("Adding Shipping Address"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(
              horizontal: Config.xMargin(context, width: 5)),
          height: Config.yMargin(context, height: 88),
          color: Color(0xffF9F9F9),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: Config.xMargin(context, width: 5)),
                  height: Config.yMargin(context, height: 10),
                  color: Colors.white,
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "Full name",
                        border: InputBorder.none,
                        hintText: "Enter your name"),
                  ),
                ),
                Container(
                  height: Config.yMargin(context, height: 10),
                  padding: EdgeInsets.symmetric(
                      horizontal: Config.xMargin(context, width: 5)),
                  color: Colors.white,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        labelText: "Address",
                        border: InputBorder.none,
                        hintText: "Enter your address"),
                  ),
                ),
                Container(
                  height: Config.yMargin(context, height: 10),
                  padding: EdgeInsets.symmetric(
                      horizontal: Config.xMargin(context, width: 5)),
                  color: Colors.white,
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "City",
                        border: InputBorder.none,
                        hintText: "Enter your city"),
                  ),
                ),
                Container(
                  height: Config.yMargin(context, height: 10),
                  padding: EdgeInsets.symmetric(
                      horizontal: Config.xMargin(context, width: 5)),
                  color: Colors.white,
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "State/Providence/Region",
                        border: InputBorder.none,
                        hintText: "Enter your State/Providence/Region"),
                  ),
                ),
                Container(
                  height: Config.yMargin(context, height: 10),
                  padding: EdgeInsets.symmetric(
                      horizontal: Config.xMargin(context, width: 5)),
                  color: Colors.white,
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "Zip Code (Postal Code)",
                        border: InputBorder.none,
                        hintText: "Enter your Zip Code"),
                  ),
                ),
                Container(
                  height: Config.yMargin(context, height: 10),
                  padding: EdgeInsets.symmetric(
                      horizontal: Config.xMargin(context, width: 5)),
                  color: Colors.white,
                  child: TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        suffixIcon:
                            Icon(Icons.arrow_forward, color: Color(0xff222222)),
                        labelText: "Country",
                        border: InputBorder.none,
                        hintText: "Enter your Country"),
                  ),
                ),
                GestureDetector(
                  onTap: () => changeScreen(context, ShippingAddress()),
                  child: Container(
                    height: Config.yMargin(context, height: 10),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(
                        Config.xMargin(context, width: 7),
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("SAVE ADDRESS", style: whiteSingle(17)),
                    ),
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
