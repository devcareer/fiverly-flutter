import 'package:fiverly_flutter/cores/util/config.dart';
import 'package:fiverly_flutter/cores/util/screen_change.dart';
import 'package:fiverly_flutter/cores/util/style.dart';
import 'package:fiverly_flutter/features/reviews_rating/screen/rating_reviews.dart';
import 'package:flutter/material.dart';

class PersonalSettingBottomSheet extends StatefulWidget {
  @override
  _PersonalSettingBottomSheetState createState() =>
      _PersonalSettingBottomSheetState();
}

class _PersonalSettingBottomSheetState
    extends State<PersonalSettingBottomSheet> {
  var _value = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: EdgeInsets.symmetric(
              horizontal: Config.xMargin(context, width: 5)),
          height: Config.yMargin(context, height: 80),
          // color: Color(0xffF9F9F9),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: Config.xMargin(context, width: 20),
                  height: Config.yMargin(context, height: 1.5),
                  decoration: BoxDecoration(
                      color: Color(0xff9B9B9B),
                      borderRadius: BorderRadius.circular(
                          Config.xMargin(context, width: 2.5))),
                ),
                Text(
                  "Password Change",
                  style: black(
                    Config.xMargin(context, width: 5),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: Config.xMargin(context, width: 4)),
                  height: Config.yMargin(context, height: 10),
                  color: Colors.white,
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "Old Password",
                        border: InputBorder.none,
                        hintText: "Enter Old Password"),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: null,
                    child: Text(
                      "Forgot Password",
                      style: TextStyle(color: Color(0xff9B9B9B)),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: Config.xMargin(context, width: 4)),
                  height: Config.yMargin(context, height: 10),
                  color: Colors.white,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        labelText: "New Password",
                        border: InputBorder.none,
                        hintText: "Enter your old new paasword"),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: Config.xMargin(context, width: 4)),
                  height: Config.yMargin(context, height: 10),
                  color: Colors.white,
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "Repeat New Password",
                        border: InputBorder.none,
                        hintText: "Enter your new password"),
                  ),
                ),
                GestureDetector(
                  onTap: () => changeScreen(context, RatingReviews()),
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
                      child: Text("SAVE PASSWORD", style: whiteSingle(17)),
                    ),
                  ),
                )
              ]),
        ),
      ),
    );
  }
}

void personalSettingsCardSheet(BuildContext context) {
  showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
            Config.xMargin(context, width: 8),
          ),
          topRight: Radius.circular(
            Config.xMargin(context, width: 8),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      context: context,
      builder: (ccontext) {
        return Container(
          decoration: BoxDecoration(
            color: Color(0xffE5E5E5),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(
                Config.xMargin(context, width: 8),
              ),
              topRight: Radius.circular(
                Config.xMargin(context, width: 8),
              ),
            ),
          ),
          child: SingleChildScrollView(child: PersonalSettingBottomSheet()),
        );
      });
}

// showModalBottomSheet(
//   shape: RoundedRectangleBorder(
//      borderRadius: BorderRadius.circular(10.0),
//   ),
//   backgroundColor: Colors.white,
//   ...
// );
