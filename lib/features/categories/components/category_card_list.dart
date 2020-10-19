import 'package:fiverly_flutter/cores/util/config.dart';
import 'package:fiverly_flutter/cores/util/stars.dart';
import 'package:fiverly_flutter/cores/util/style.dart';
import 'package:flutter/material.dart';

class CatgoryCardList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ratingStars = List.generate(5, (index) => index + 1);
    return Stack(
      children: [
        Container(
          height: Config.yMargin(context, height: 26),
          child: Stack(
            children: [
              Container(
                // margin: EdgeInsets.symmetric(
                //     vertical: Config.yMargin(context, height: 1.5)),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.circular(Config.xMargin(context, width: 4)),
                ),
                height: Config.yMargin(context, height: 21),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(
                                Config.xMargin(context, width: 4)),
                            bottomLeft: Radius.circular(
                                Config.xMargin(context, width: 4))),
                        child: Image.asset(
                          "images/women1.png",
                          width: Config.xMargin(context, width: 30),
                          height: Config.yMargin(context, height: 21),
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
                                "Pullover",
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
                                  children: ratingStars
                                      .map((e) => iconsRand(e, context))
                                      .toList()),
                              Text("51\$",
                                  style:
                                      black(Config.xMargin(context, width: 4)))
                            ]),
                      ),
                    ]),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: Config.yMargin(context, height: 0),
          right: 0,
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
      ],
    );
  }
}
