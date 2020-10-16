import 'package:fiverly_flutter/features/global/app_color.dart';
import 'package:fiverly_flutter/features/global/screen_app_bar.dart';
import 'package:fiverly_flutter/features/global/text_style.dart';
import 'package:fiverly_flutter/features/global/ui_helper.dart';
import 'package:fiverly_flutter/features/main/main_page.dart';
import 'package:fiverly_flutter/features/searchpages/virtual_search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductsView extends StatelessWidget {
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
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 150,
              width: double.infinity,
              color: AppColor.backgroundColor,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Favorites',
                          style: kTitleStyle.copyWith(fontSize: 20),
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, CupertinoPageRoute(builder: (context) => VirtualSearch()));
                        },
                                              child: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 35,
                    child: ListView.builder(
                        itemCount: 10,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Container(
                            width: 120,
                            margin: EdgeInsets.only(left: 8.0),
                            height: 20,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.black),
                            child: Text(
                              "Summer",
                              style: kTextWithColorWhite,
                            ),
                          );
                        }),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [sectio1(), sectio1(), sectio1()],
                  )
                ],
              ),
            ),
            Container(
              height: 500,
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, mainAxisSpacing: 30),
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(left: 8.0, right: 8.0),
                      height: 900,
                      width: 180,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColor.cardBackgroundColor),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }

  Row sectio1() {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.filter),
        ),
        Text(
          "Filter",
          style: kTitleStyle,
        ),
        SizedBox(
          width: 8.0,
        )
      ],
    );
  }
}
