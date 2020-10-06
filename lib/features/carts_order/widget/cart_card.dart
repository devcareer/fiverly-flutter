import 'package:fixing/cores/util/config.dart';
import 'package:flutter/material.dart';

class CartCard extends StatelessWidget {
  final index;

  const CartCard({Key key, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(index);
    return Container(
      child: Row(children: [
        ClipRRect(
          child: index / 2 == 0
              ? Image.asset(
                  "images/bags.png",
                  width: Config.xMargin(context, width: 25),
                )
              : Image.asset(
                  "images/image.png",
                  width: Config.xMargin(context, width: 25),
                ),
        )
      ]),
    );
  }
}
