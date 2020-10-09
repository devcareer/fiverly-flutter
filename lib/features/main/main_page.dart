import 'package:carousel_pro/carousel_pro.dart';
import 'package:fiverly_flutter/features/global/app_color.dart';
import 'package:fiverly_flutter/features/global/text_style.dart';
import 'package:fiverly_flutter/features/global/ui_helper.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var center = Center(
      child: Image.asset(
        "assets/images/girl.png",
        fit: BoxFit.contain,
        height: 250,
        width: 190,
      ),
    );
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image(
                  image: AssetImage("assets/images/mainpage.png"),
                  colorBlendMode: BlendMode.colorBurn,
                  color: Colors.black.withAlpha(100),
                ),
                Positioned(
                  bottom: 100,
                  left: 8,
                  child: Text("Fashion ", style: kTextWithColorWhiteBigger),
                ),
                Positioned(
                  bottom: 60,
                  left: 8,
                  child: Text("Sale", style: kTextWithColorWhiteBigger),
                ),
                Positioned(
                  bottom: 0,
                  left: 8,
                  child: Container(
                    width: 130,
                    margin: EdgeInsets.symmetric(vertical: 15.0),
                    height: screenHeight(context) / 20,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: AppColor.primaryColor),
                    child: Text(
                      "Check",
                      style: kTextWithColorWhite,
                    ),
                  ),
                )
              ],
            ),
            //>>>>>>>>>>>>>>>>>>>>>>>>>>>>> Section >>>>>>>>>>>>>>>>>>>>>>>>>>>
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                sectionRow(firstText: "New", secondText: "View all"),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    "You’ve never seen it before!",
                    style: TextStyle(
                      fontFamily: 'Mec',
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 350,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return storeSection(
                          center: center,
                          context: context,
                          color: Colors.black,
                          text: "New",
                          textColor: Colors.white);
                    },
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                slider(),
                SizedBox(
                  height: 20,
                ),
                sectionRow(firstText: "Sale", secondText: "View all"),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    "You’ve never seen it before!",
                    style: TextStyle(
                      fontFamily: 'Mec',
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 350,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return storeSection(
                          center: center,
                          context: context,
                          color: Colors.red,
                          text: "20%",
                          textColor: Colors.white);
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                sectionRow(firstText: "In stock", secondText: "View all"),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    "You’ve never seen it before!",
                    style: TextStyle(
                      fontFamily: 'Mec',
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 350,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return storeSection(
                          center: center,
                          context: context,
                          color: Colors.black,
                          text: "Buy",
                          textColor: Colors.white);
                    },
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Row sectionRow({firstText, secondText}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0, top: 8.0),
          child: Text(
            firstText,
            style: TextStyle(
                fontFamily: 'Mec',
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.w600),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8.0, top: 8.0),
          child: Text(
            secondText,
            style: TextStyle(
              fontFamily: 'Mec',
              color: Colors.grey,
              fontSize: 15,
            ),
          ),
        ),
      ],
    );
  }

  SizedBox slider() {
    return SizedBox(
        height: 200.0,
        child: Carousel(
          images: [
            Image.asset(
              "assets/images/sectioncard.png",
              fit: BoxFit.contain,
              width: double.infinity,
            ),
            Image.asset(
              "assets/images/sectioncard.png",
              fit: BoxFit.contain,
              width: double.infinity,
            ),
            Image.asset(
              "assets/images/sectioncard.png",
              fit: BoxFit.contain,
              width: double.infinity,
            ),
          ],
          showIndicator: false,
          borderRadius: false,
          moveIndicatorFromBottom: 180.0,
          noRadiusForIndicator: true,
          overlayShadow: true,
          overlayShadowColors: Colors.white,
          overlayShadowSize: 0.7,
        ));
  }

  storeSection({Center center, BuildContext context, color, text, textColor}) {
    return Container(
      height: 350,
      width: 200,
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(left: 8.0, right: 8.0),
            height: 250,
            width: 180,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColor.cardBackgroundColor),
            child: Stack(
              children: [
                Container(
                  width: 200,
                  height: 200,
                ),
                center,
                tag(context, color, text, textColor),
              ],
            ),
          ),
          Positioned(
            bottom: 80,
            right: 0,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100)),
              elevation: 3,
              child: Container(
                  width: 50,
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.white),
                  child: Icon(
                    Icons.favorite_outline,
                    color: Colors.grey,
                  )),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: AppColor.yellowish,
                        size: 19,
                      ),
                      Icon(
                        Icons.star,
                        color: AppColor.yellowish,
                        size: 19,
                      ),
                      Icon(
                        Icons.star,
                        color: AppColor.yellowish,
                        size: 19,
                      ),
                      Icon(
                        Icons.star,
                        color: AppColor.yellowish,
                        size: 19,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          "(10)",
                          style: TextStyle(
                            fontFamily: 'Mec',
                            color: Colors.grey,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    "Dorothy Perkins",
                    style: TextStyle(
                      fontFamily: 'Mec',
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    "Evening Dress",
                    style: TextStyle(
                        fontFamily: 'Mec',
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: RichText(
                    text: TextSpan(
                        text: r"15$",
                        style: TextStyle(
                            fontFamily: 'Mec',
                            decoration: TextDecoration.lineThrough,
                            color: Colors.grey,
                            fontSize: 17,
                            fontWeight: FontWeight.w600),
                        children: [
                          TextSpan(
                            text: r" 12$",
                            style: TextStyle(
                                fontFamily: 'Mec',
                                decoration: TextDecoration.none,
                                color: AppColor.primaryColor,
                                fontSize: 17,
                                fontWeight: FontWeight.w600),
                          ),
                        ]),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Padding tag(BuildContext context, color, text, textColor) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, left: 8.0),
      child: Container(
        width: 55,
        height: screenHeight(context) / 25,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100), color: color),
        child: Text(
          text,
          style: kTextWithColorWhite.copyWith(fontSize: 14, color: textColor),
        ),
      ),
    );
  }
}
