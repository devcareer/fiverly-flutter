import 'package:fixing/cores/util/config.dart';
import 'package:fixing/features/carts_order/widget/cart_card.dart';
import 'package:flutter/material.dart';

class Carts extends StatelessWidget {
  final carts = List.generate(8, (index) => index);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Bag"),
        elevation: 0,
      ),
      body: Container(
        height: Config.yMargin(context, height: 65),
        width: Config.xMargin(context, width: 95),
        child: ListView.separated(
          separatorBuilder: (context, index) {
            return SizedBox(
              height: Config.yMargin(context, height: 5),
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
    );
  }
}
