import 'package:fiverly_flutter/cores/util/config.dart';
import 'package:fiverly_flutter/cores/util/style.dart';
import 'package:flutter/material.dart';

class MyProfileHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(
        Config.xMargin(context, width: 5),
      ),
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        CircleAvatar(
          radius: Config.xMargin(context, width: 12),
          backgroundImage: AssetImage("images/profileImage.png"),
        ),
        SizedBox(width: Config.xMargin(context, width: 6)),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            "Matilda Brown",
            style: black(
              Config.xMargin(context, width: 6),
            ),
          ),
          SizedBox(height: Config.xMargin(context, width: 1)),
          Text(
            "Matildabrown@mail.com.com",
            style: TextStyle(
              color: Color(0xff9B9B9B),
            ),
          )
        ])
      ]),
    );
  }
}
