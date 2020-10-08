import 'package:fiverly_flutter/cores/util/config.dart';
import 'package:fiverly_flutter/features/shipping_details/components/payment_card_bottom_sheet.dart';
import 'package:fiverly_flutter/features/shipping_details/components/payment_card_section.dart';
import 'package:flutter/material.dart';

class PaymentCard extends StatefulWidget {
  @override
  _PaymentCardState createState() => _PaymentCardState();
}

class _PaymentCardState extends State<PaymentCard> {
  final cardsList = List.generate(3, (index) => index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      appBar: AppBar(title: Text("Payment methods")),
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: Config.xMargin(context, width: 5),
                horizontal: Config.xMargin(context, width: 2.5)),
            child: Text("Your Payment cards",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: Config.xMargin(context, width: 4.5))),
          ),
          Column(children: cardsList.map((e) => PaymentCardSection()).toList()),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        child: Icon(Icons.add),
        onPressed: () => addPaymentCardSheet(context),
      ),
    );
  }
}
