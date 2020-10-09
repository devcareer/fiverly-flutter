import 'package:fiverly_flutter/cores/util/config.dart';
import 'package:fiverly_flutter/features/carts_order/screen/check_out.dart';
import 'package:fiverly_flutter/features/carts_order/widget/button_section.dart';
import 'package:fiverly_flutter/features/carts_order/widget/cart_card.dart';
import 'package:fiverly_flutter/features/carts_order/widget/promo_input_code.dart';
import 'package:flutter/material.dart';

class Carts extends StatefulWidget {
  @override
  _CartsState createState() => _CartsState();
}

class _CartsState extends State<Carts> {
  final carts = List.generate(8, (index) => index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      appBar: AppBar(
        title: Text("My Bag"),
        elevation: 0,
        actions: [
          GestureDetector(
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => CheckOutPage())),
            child: Icon(Icons.arrow_forward),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: Config.yMargin(context, height: 75),
              width: Config.xMargin(context, width: 95),
              child: ListView.separated(
                separatorBuilder: (context, index) {
                  return Container(
                    height: Config.yMargin(context, height: 3),
                  );
                },
                itemCount: carts.length,
                itemBuilder: (context, index) {
                  return CartCard(
                    index: index,
                  );
                },
              ),
            ),
            PromoInputCode(),
            TotalButton(),
          ],
        ),
      ),
    );
  }
}
