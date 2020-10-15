import 'package:fiverly_flutter/cores/util/config.dart';
import 'package:flutter/material.dart';

class ReviewCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              vertical: Config.xMargin(context, width: 4),
              horizontal: Config.xMargin(context, width: 5)),
          child: Card(
            child: Stack(
              children: [
                Container(
                  padding: EdgeInsets.only(
                      top: Config.xMargin(context, width: 6),
                      right: Config.xMargin(context, width: 6),
                      bottom: Config.xMargin(context, width: 0),
                      left: Config.xMargin(context, width: 6)),
                  height: Config.yMargin(context, height: 52),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Kim Shine"),
                        SizedBox(height: Config.yMargin(context, height: 0.5)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.star, color: Colors.amber),
                                Icon(Icons.star, color: Colors.amber),
                                Icon(Icons.star, color: Colors.amber),
                                Icon(Icons.star, color: Colors.amber),
                                Icon(
                                  Icons.star,
                                  color: Colors.grey,
                                ),
                              ],
                            ),
                            Text("August 14, 2019")
                          ],
                        ),
                        SizedBox(height: Config.yMargin(context, height: 2)),
                        Text(
                          """I loved the dress so much as much as i tried it on i knew i had to buy it in another color. I am 5\'3 about 155lbs and i carry all my weight in my upper body. When i put it on  i felt it thinned me put and i got so many compliments""",
                          style:
                              TextStyle(height: Config.textSize(context, .33)),
                        ),
                        SizedBox(height: Config.yMargin(context, height: 1.5)),
                        Container(
                          width: Config.xMargin(context, width: 95),
                          height: Config.yMargin(context, height: 14),
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    right: Config.xMargin(context, width: 1.5)),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                        Config.xMargin(context, width: 3)),
                                    child: Image.asset(
                                      "images/image_1.png",
                                      fit: BoxFit.cover,
                                      width: Config.xMargin(context, width: 30),
                                    )),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    right: Config.xMargin(context, width: 1.5)),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                        Config.xMargin(context, width: 3)),
                                    child: Image.asset(
                                      "images/image.png",
                                      fit: BoxFit.cover,
                                      width: Config.xMargin(context, width: 30),
                                    )),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    right: Config.xMargin(context, width: 1.5)),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                        Config.xMargin(context, width: 3)),
                                    child: Image.asset(
                                      "images/image_1.png",
                                      fit: BoxFit.cover,
                                      width: Config.xMargin(context, width: 30),
                                    )),
                              ),
                            ],
                          ),
                        ),
                        Row(
                            // mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text("Helpful  "),
                              IconButton(
                                  icon: Icon(Icons.favorite), onPressed: null)
                            ])
                      ]),
                ),
              ],
            ),
          ),
        ),
        Positioned(
            top: 0,
            left: Config.xMargin(context, width: 2.5),
            child: CircleAvatar(
              radius: Config.xMargin(context, width: 5),
              backgroundImage: AssetImage("images/image 2.png"),
            ))
      ],
    );
  }
}
