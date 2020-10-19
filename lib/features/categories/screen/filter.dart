import 'package:fiverly_flutter/cores/util/colors.dart';
import 'package:fiverly_flutter/cores/util/config.dart';
import 'package:fiverly_flutter/cores/util/screen_change.dart';
import 'package:fiverly_flutter/cores/util/style.dart';
import 'package:flutter/material.dart';

class Filter extends StatefulWidget {
  @override
  _FilterState createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  final colors = [
    Colors.red,
    Colors.red[900],
    Colors.grey,
    Colors.indigo[600],
    Colors.orange,
    Colors.teal
  ];
  final colorsNumber = List.generate(6, (index) => index);
  final sizeNumber = List.generate(5, (index) => index);
  RangeValues rangeValues = RangeValues(0, 200);
  var rangeStart = 0, rangeEnd = 200;
  var chosenColor = 0;
  var chosenSize = 0;
  var chosenCategory = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Filters")),
      backgroundColor: AppColor.backgroundColor,
      body: SingleChildScrollView(
        child: Container(
            padding: EdgeInsets.symmetric(
              // horizontal: Config.xMargin(context, width: 5),
              vertical: Config.xMargin(context, width: 5),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: Config.xMargin(context, width: 5),
                  ),
                  child: Text(
                    "Price range",
                    style: black(Config.textSize(context, 4.5)),
                  ),
                ),
                SizedBox(height: Config.yMargin(context, height: 3)),
                Container(
                  height: Config.yMargin(context, height: 15),
                  color: Color(0xffffffff),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: Config.xMargin(context, width: 5),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "\$$rangeStart",
                              style: TextStyle(
                                  fontSize:
                                      Config.yMargin(context, height: 3.3)),
                            ),
                            Text(
                              "\$$rangeEnd",
                              style: TextStyle(
                                  fontSize:
                                      Config.yMargin(context, height: 3.3)),
                            ),
                          ],
                        ),
                        SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                              trackShape: RoundedRectSliderTrackShape(),
                              trackHeight: 2.5,
                              // overlayColor: Colors.red.withAlpha(32),
                              // overlayShape:
                              //     RoundSliderOverlayShape(overlayRadius: 28.0),
                              // activeTickMarkColor: Colors.red[700],
                              // inactiveTickMarkColor: Colors.red[100],
                              // valueIndicatorShape: PaddleSliderValueIndicatorShape(),
                              // valueIndicatorColor: Colors.white,
                              // valueIndicatorTextStyle: TextStyle(
                              //   color: Colors.white,
                              // ),
                              // activeTrackColor: Color(0xff000000),
                              // inactiveTrackColor: Colors.white,
                              // thumbColor: Color(0xffffffff),
                            ),
                            child: RangeSlider(
                              values: rangeValues,
                              activeColor: Colors.red,
                              inactiveColor: Colors.grey,
                              min: 0,
                              max: 200,
                              onChanged: (RangeValues range) {
                                setState(() {
                                  rangeValues = range;
                                  rangeStart = range.start.toInt().round();
                                  rangeEnd = range.end.toInt().round();
                                });
                              },
                            ))
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: Config.xMargin(context, width: 5),
                  ),
                  child: Text(
                    "Colors",
                    style: black(Config.textSize(context, 4.5)),
                  ),
                ),
                SizedBox(height: Config.yMargin(context, height: 3)),
                Container(
                  height: Config.yMargin(context, height: 15),
                  color: Color(0xffffffff),
                  child: Row(
                      children: colorsNumber.map((e) {
                    setState(() {});
                    return colorWidget(e);
                  }).toList()),
                ),
                SizedBox(height: Config.yMargin(context, height: 3)),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: Config.xMargin(context, width: 5),
                  ),
                  child: Text(
                    "Sizes",
                    style: black(Config.textSize(context, 4.5)),
                  ),
                ),
                SizedBox(height: Config.yMargin(context, height: 3)),
                Container(
                  height: Config.yMargin(context, height: 10),
                  color: AppColor.white,
                  child: Row(
                      children: sizeNumber.map((e) => sizeWidget(e)).toList()),
                ),
                SizedBox(height: Config.yMargin(context, height: 3)),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: Config.xMargin(context, width: 5),
                  ),
                  child: Text(
                    "Category",
                    style: black(Config.textSize(context, 4.5)),
                  ),
                ),
                SizedBox(height: Config.yMargin(context, height: 3)),
                Container(
                  height: Config.yMargin(context, height: 18),
                  color: AppColor.white,
                  child: Wrap(
                      children:
                          sizeNumber.map((e) => categoryWidget(e)).toList()),
                ),
                SizedBox(height: Config.yMargin(context, height: 3)),
                brand(),
                SizedBox(height: Config.yMargin(context, height: 3)),
                buttonCard(),
              ],
            )),
      ),
    );
  }

// widgets
  Widget colorWidget(int index) => Container(
      height: Config.yMargin(context, height: 10),
      width: Config.yMargin(context, height: 10),
      child: Stack(
        children: [
          chosenColor == index
              ? Center(
                  child: GestureDetector(
                    onTap: () => setState(() {}),
                    child: Container(
                      height: Config.yMargin(context, height: 8),
                      width: Config.yMargin(context, height: 8),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.red[400])),
                    ),
                  ),
                )
              : Container(),
          Center(
            child: GestureDetector(
              onTap: () => setState(() {
                chosenColor = index;
              }),
              child: Container(
                height: Config.yMargin(context, height: 6),
                width: Config.yMargin(context, height: 6),
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: colors[index]),
              ),
            ),
          )
        ],
      ));

  Widget sizeWidget(int index) => GestureDetector(
        onTap: () => setState(() {
          chosenSize = index;
        }),
        child: Container(
            margin: EdgeInsets.symmetric(
                horizontal: Config.xMargin(context, width: 3)),
            height: Config.yMargin(context, height: 6),
            width: Config.xMargin(context, width: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  Config.xMargin(context, width: 3.4),
                ),
                border: Border.all(
                    color: chosenSize != index
                        ? Color(0xff9f9f9f)
                        : Colors.transparent),
                color: chosenSize == index
                    ? AppColor.primaryColor
                    : AppColor.white),
            child: Center(
              child: Text(
                "M",
                style: TextStyle(
                    color:
                        chosenSize == index ? AppColor.white : AppColor.black),
              ),
            )),
      );

  Widget categoryWidget(int index) => GestureDetector(
        onTap: () => setState(() {
          chosenCategory = index;
        }),
        child: Container(
            margin: EdgeInsets.symmetric(
                horizontal: Config.xMargin(context, width: 3),
                vertical: Config.xMargin(context, width: 2.4)),
            height: Config.yMargin(context, height: 6),
            width: Config.xMargin(context, width: 26),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  Config.xMargin(context, width: 3.4),
                ),
                border: Border.all(
                    color: chosenCategory != index
                        ? Color(0xff9f9f9f)
                        : Colors.transparent),
                color: chosenCategory == index
                    ? AppColor.primaryColor
                    : AppColor.white),
            child: Center(
              child: Text(
                "category $index",
                style: TextStyle(
                    color: chosenCategory == index
                        ? AppColor.white
                        : AppColor.black),
              ),
            )),
      );

  Widget brand() => Padding(
        padding: EdgeInsets.symmetric(
          horizontal: Config.xMargin(context, width: 5),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Colors",
                  style: black(Config.textSize(context, 4.5)),
                ),
                Text("adidas originals, jack & jones, s.Oliver")
              ],
            ),
            IconButton(
                icon: Icon(Icons.arrow_forward_ios_sharp), onPressed: null)
          ],
        ),
      );

  Widget buttonCard() => Container(
        height: Config.yMargin(context, height: 15),
        child: Card(
            elevation: 12,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: null,
                  child: Container(
                    height: Config.yMargin(context, height: 6),
                    width: Config.xMargin(context, width: 40),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(
                            Config.xMargin(context, width: 5))),
                    child: Center(
                      child: Text(
                        "Discard",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => changeScreen(context, Filter()),
                  child: Container(
                    height: Config.yMargin(context, height: 6),
                    width: Config.xMargin(context, width: 40),
                    decoration: BoxDecoration(
                        color: Color(0xffDB3022),
                        borderRadius: BorderRadius.circular(
                            Config.xMargin(context, width: 5))),
                    child: Center(
                      child: Text(
                        "Apply",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            )),
      );
}
