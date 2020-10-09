import 'package:fiverly_flutter/cores/util/config.dart';
import 'package:fiverly_flutter/cores/util/style.dart';
import 'package:fiverly_flutter/features/shipping_details/components/my_profile_details.dart';
import 'package:fiverly_flutter/features/shipping_details/components/my_profile_header.dart';
import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: SafeArea(
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Color(0xff222222),
                    ),
                    onPressed: null),
                IconButton(
                    icon: Icon(
                      Icons.search,
                      color: Color(0xff222222),
                    ),
                    onPressed: null),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: Config.xMargin(
                    context,
                    width: 5,
                  ),
                  vertical: Config.xMargin(context, width: 3)),
              child: Text(
                "My Profile",
                style: black(Config.xMargin(context, width: 7.5)),
              ),
            ),
            MyProfileHeader(),
            UserProfileOptions(),
          ]),
        ),
      ),
    );
  }
}
