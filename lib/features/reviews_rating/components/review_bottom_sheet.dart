import 'package:fiverly_flutter/cores/util/config.dart';
import 'package:fiverly_flutter/cores/util/screen_change.dart';
import 'package:fiverly_flutter/cores/util/style.dart';
import 'package:fiverly_flutter/features/categories/screen/categories.dart';
import 'package:fiverly_flutter/features/reviews_rating/screen/rating_reviews.dart';
import 'package:flutter/material.dart';
import 'package:multi_image_picker/multi_image_picker.dart';
import 'dart:async';

class PersonalSettingBottomSheet extends StatefulWidget {
  @override
  _PersonalSettingBottomSheetState createState() =>
      _PersonalSettingBottomSheetState();
}

class _PersonalSettingBottomSheetState
    extends State<PersonalSettingBottomSheet> {
  List<int> ratingChecking = List.generate(5, (index) => index + 1);
  var _value = false;
  int rated = 1;

  List<Asset> images = List<Asset>();
  String _error;

//  the rating functionality
  IconButton icons(int rating, int rate) => IconButton(
        icon: Icon(Icons.star,
            color: rating <= rated ? Colors.amber : Colors.black12),
        onPressed: () {
          setState(() {
            rated = rate;
          });
        },
      );

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print(images);
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: EdgeInsets.symmetric(
              horizontal: Config.xMargin(context, width: 5)),
          // height: Config.yMargin(context, height: 80),
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
                SizedBox(height: Config.yMargin(context, height: 3)),
                Text(
                  "What is your rate",
                  style: black(
                    Config.xMargin(context, width: 5),
                  ),
                ),
                SizedBox(height: Config.yMargin(context, height: 1)),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:
                        ratingChecking.map((num) => icons(num, num)).toList(),
                  ),
                ),
                SizedBox(height: Config.yMargin(context, height: 2)),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: Config.textSize(context, 10)),
                  child: Text(
                    "Please share your opinion about the product",
                    style: TextStyle(
                        fontSize: Config.textSize(
                          context,
                          5,
                        ),
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: Config.yMargin(context, height: 3)),
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: Config.xMargin(context, width: 3.5)),
                  height: Config.yMargin(context, height: 23),
                  color: Colors.white,
                  child: TextField(
                    maxLines: 1,
                    decoration: InputDecoration(
                        labelText: "Rating",
                        border: InputBorder.none,
                        hintText: "Enter your rating"),
                  ),
                ),
                SizedBox(height: Config.yMargin(context, height: 3)),
                Container(
                    height: Config.yMargin(context, height: 23),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        images != null
                            ? Container(
                                width: Config.xMargin(context, width: 56),
                                height: Config.yMargin(context, height: 22),
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: images
                                      .map((e) => Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: AssetThumb(
                                              asset: e,
                                              height: int.parse(Config.yMargin(
                                                      context,
                                                      height: 20)
                                                  .toString()),
                                              width: int.parse(
                                                Config.xMargin(context,
                                                        width: 30)
                                                    .toString(),
                                              ),
                                            ),
                                          ))
                                      .toList(),
                                ),
                              )
                            : Container(
                                width: Config.xMargin(context, width: 56),
                                height: Config.yMargin(context, height: 22),
                              ),
                        GestureDetector(
                          onTap: loadImages,
                          child: Container(
                            color: Colors.white,
                            padding: EdgeInsets.all(
                                Config.xMargin(context, width: 1.5)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height: Config.yMargin(context, height: 15),
                                  width: Config.xMargin(context, width: 20),
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      shape: BoxShape.circle),
                                  child: Icon(
                                    Icons.camera_alt,
                                    color: Colors.white,
                                    size: Config.textSize(context, 10),
                                  ),
                                ),
                                Text("Add your photos")
                              ],
                            ),
                          ),
                        )
                      ],
                    )),
                SizedBox(height: Config.yMargin(context, height: 3.5)),
                GestureDetector(
                  onTap: () => changeScreen(context, CategorySection()),
                  child: Container(
                    height: Config.yMargin(context, height: 10),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(
                        Config.xMargin(context, width: 6),
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("SEND REVIEW", style: whiteSingle(17)),
                    ),
                  ),
                )
              ]),
        ),
      ),
    );
  }

  Future<void> loadImages() async {
    setState(() {
      images = List<Asset>();
      print("jj");
    });

    List<Asset> resultList;
    String error;
    try {
      resultList = await MultiImagePicker.pickImages(
        maxImages: 300,
        enableCamera: true,
        selectedAssets: images,
        materialOptions: MaterialOptions(
          actionBarColor: "#abcdef",
          actionBarTitle: "Example App",
          allViewTitle: "All Photos",
          useDetailsView: false,
          selectCircleStrokeColor: "#000000",
        ),
      );
      print(resultList);
    } on Exception catch (e) {
      error = e.toString();
    }
    print(mounted);
    print(resultList);
    if (!mounted) return;

    setState(() {
      images = resultList;
      if (error == null) _error = "No Error Dectected";
    });
  }
}

void reviewRatingBottomSheet(BuildContext context) {
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
