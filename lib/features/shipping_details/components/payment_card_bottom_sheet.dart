import 'package:fiverly_flutter/cores/util/config.dart';
import 'package:fiverly_flutter/cores/util/screen_change.dart';
import 'package:fiverly_flutter/cores/util/style.dart';
import 'package:fiverly_flutter/features/shipping_details/screen/shipping_address.dart';
import 'package:flutter/material.dart';

class PaymentCardBottomSheet extends StatefulWidget {
  @override
  _PaymentCardBottomSheetState createState() => _PaymentCardBottomSheetState();
}

class _PaymentCardBottomSheetState extends State<PaymentCardBottomSheet> {
  var _value = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding:
            EdgeInsets.symmetric(horizontal: Config.xMargin(context, width: 5)),
        height: Config.yMargin(context, height: 80),
        color: Color(0xffF9F9F9),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Text(
            "Add new card",
            style: black(
              Config.xMargin(context, width: 5),
            ),
          ),
          Container(
            height: Config.yMargin(context, height: 10),
            color: Colors.white,
            child: TextField(
              decoration: InputDecoration(
                  labelText: "Name on card",
                  border: InputBorder.none,
                  hintText: "Enter your name"),
            ),
          ),
          Container(
            height: Config.yMargin(context, height: 10),
            color: Colors.white,
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  suffixIcon: Image.asset("images/mastercard.png"),
                  labelText: "Card number",
                  border: InputBorder.none,
                  hintText: "Enter card number"),
            ),
          ),
          Container(
            height: Config.yMargin(context, height: 10),
            color: Colors.white,
            child: TextField(
              decoration: InputDecoration(
                  labelText: "Expire Date",
                  border: InputBorder.none,
                  hintText: "Enter expire date"),
            ),
          ),
          Container(
            height: Config.yMargin(context, height: 10),
            color: Colors.white,
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  suffixIcon:
                      Icon(Icons.help_outline, color: Color(0xffDADADA)),
                  labelText: "CVV",
                  border: InputBorder.none,
                  hintText: "Enter cvv number"),
            ),
          ),
          Row(
            children: [
              Checkbox(
                activeColor: Colors.black,
                onChanged: (check) {
                  setState(() {
                    _value = check;
                  });
                },
                tristate: true,
                value: _value,
              ),
              Text("Use as default payment method")
            ],
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
                child: Text("ADD CARD", style: whiteSingle(17)),
              ),
            ),
          )
        ]),
      ),
    );
  }
}

void addPaymentCardSheet(BuildContext context) {
  showModalBottomSheet(
      // shape: ShapeBorder(),
      context: context,
      builder: (ccontext) {
        return Container(
          decoration: BoxDecoration(
              color: Color(0xffE5E5E5),
              borderRadius:
                  BorderRadius.circular(Config.xMargin(context, width: 15))),
          child: SingleChildScrollView(child: PaymentCardBottomSheet()),
        );
      });
}
