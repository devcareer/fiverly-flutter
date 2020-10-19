import 'package:fiverly_flutter/cores/util/colors.dart';
import 'package:fiverly_flutter/cores/util/config.dart';
import 'package:fiverly_flutter/cores/util/screen_change.dart';
import 'package:fiverly_flutter/features/categories/components/brand_check.dart';
import 'package:fiverly_flutter/features/categories/screen/filter.dart';
import 'package:flutter/material.dart';

class CategoryBrand extends StatelessWidget {
  final brands = List.generate(10, (index) => index);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Brand")),
      backgroundColor: AppColor.backgroundColor,
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: Config.xMargin(context, width: 4)),
                height: Config.yMargin(context, height: 8),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                        Config.xMargin(context, width: 10))),
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: IconButton(
                        icon: Icon(Icons.search),
                        onPressed: null,
                      ),
                      hintText: "Search",
                      border: InputBorder.none),
                ),
              ),
              Column(
                children: brands.map((e) => BrandCheck()).toList(),
              ),
              Container(
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
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
