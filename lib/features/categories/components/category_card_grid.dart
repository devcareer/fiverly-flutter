import 'package:fiverly_flutter/cores/util/config.dart';
import 'package:fiverly_flutter/cores/util/stars.dart';
import 'package:fiverly_flutter/cores/util/style.dart';
import 'package:fiverly_flutter/features/global/app_color.dart';
import 'package:flutter/material.dart';

class CategoryCardGrid extends StatelessWidget {
  final num;

  const CategoryCardGrid({Key key, this.num}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final rating = List.generate(5, (index) => index);
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 2.5),
          height: Config.yMargin(context, height: 65),
          width: Config.xMargin(context, width: 42),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: Config.yMargin(context, height: 28),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(
                          Config.xMargin(context, width: 4)),
                      child: Image.asset(
                        "images/women2.png",
                        height: Config.yMargin(context, height: 30),
                        width: Config.xMargin(context, width: 45),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Row(
                    children: rating.map((e) => icons(e, 3, context)).toList(),
                  ),
                  Text("(3)")
                ],
              ),
              Text("Mango", style: TextStyle(color: Color(0xff9f9f9f))),
              Text(
                "T-Shirt SPANISH",
                style: black(Config.textSize(context, 4)),
              ),
              num % 2 == 0
                  ? Text(
                      "9\$",
                      style: TextStyle(
                          fontSize: Config.textSize(context, 3.5),
                          fontWeight: FontWeight.bold),
                    )
                  : RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "21\$ ",
                            style: TextStyle(
                                color: Color(0xff9f9f9f),
                                decoration: TextDecoration.lineThrough),
                          ),
                          TextSpan(
                            text: " 14\$",
                            style: TextStyle(color: Colors.red),
                          )
                        ],
                      ),
                    )
            ],
          ),
        ),
        Positioned(
          bottom: Config.yMargin(context, height: 12),
          right: Config.xMargin(context, width: 4),
          child: Container(
            width: Config.xMargin(context, width: 10),
            height: Config.yMargin(context, height: 10),
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0, 5),
                    blurRadius: 30,
                  )
                ]),
            child: Center(child: Icon(Icons.favorite_border)),
          ),
        ),
        num % 2 == 0
            ? Container(child: Text(""))
            : Positioned(
                top: Config.yMargin(context, height: 2),
                left: Config.xMargin(context, width: 2),
                child: Container(
                  height: Config.yMargin(context, height: 6),
                  width: Config.xMargin(context, width: 14),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        Config.xMargin(context, width: 5),
                      ),
                      color: AppColor.primaryColor),
                  child: Center(
                      child: Text(
                    "-20%",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: Config.textSize(context, 4.5)),
                  )),
                )),
      ],
    );
  }
}
