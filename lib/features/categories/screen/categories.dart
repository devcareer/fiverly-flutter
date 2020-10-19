import 'dart:math';

import 'package:fiverly_flutter/cores/util/colors.dart';
import 'package:fiverly_flutter/cores/util/config.dart';
import 'package:fiverly_flutter/cores/util/screen_change.dart';
import 'package:fiverly_flutter/cores/util/style.dart';
import 'package:fiverly_flutter/features/categories/blocs/categories_bloc.dart';
import 'package:fiverly_flutter/features/categories/components/category_card_grid.dart';
import 'package:fiverly_flutter/features/categories/components/category_card_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'brand.dart';

class CategorySection extends StatelessWidget {
  final categories = List.generate(6, (index) => index);
  final categoriesPros = List.generate(10, (index) => index + 1);
  Random rand = Random();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight) / 1.8;
    // final double itemHeight = (size.height - kToolbarHeight - 24) / 2;

    final double itemWidth = size.width / 2;
    final categoryPage = LayoutBloc();
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back),
                      onPressed: () => goBack(context),
                    ),
                    Text(
                      "Woment's tops",
                      style: black(Config.textSize(context, 6)),
                    ),
                    IconButton(
                        icon: Icon(Icons.search),
                        onPressed: () =>
                            changeScreen(context, CategoryBrand())),
                  ],
                ),
                SizedBox(height: Config.yMargin(context, height: 3)),
                Container(
                  height: Config.yMargin(context, height: 5.5),
                  width: Config.xMargin(context, width: 100),
                  margin: EdgeInsets.symmetric(
                    horizontal: Config.yMargin(context, height: 2),
                  ),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: categories.map((e) {
                      return Container(
                        height: Config.yMargin(context, height: 4),
                        width: Config.xMargin(context, width: 25),
                        margin: EdgeInsets.symmetric(
                          horizontal: Config.yMargin(context, height: .4),
                        ),
                        decoration: BoxDecoration(
                            color: AppColor.black,
                            borderRadius: BorderRadius.circular(
                                Config.xMargin(context, width: 5))),
                        child: Center(
                          child: Text(
                            "category $e",
                            style: TextStyle(color: Color(0xffffffff)),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
                SizedBox(height: Config.yMargin(context, height: 3)),
                Container(
                  color: AppColor.backgroundColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          IconButton(
                            icon: Icon(Icons.filter_list_rounded),
                            onPressed: () => categoryPage.add(LoadEvent()),
                          ),
                          Text("Filters")
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(
                            icon: Icon(Icons.swap_vert),
                            onPressed: () => categoryPage.add(LoadEvent()),
                          ),
                          Text("Price lowest to higest"),
                        ],
                      ),
                      IconButton(
                        icon: Icon(Icons.format_list_bulleted_rounded),
                        onPressed: () => categoryPage.add(LoadEvent()),
                      ),
                    ],
                  ),
                ),
                BlocBuilder<LayoutBloc, LayoutState>(
                    cubit: categoryPage,
                    builder: (context, state) {
                      if (state is LayoutInitial) {
                        return state.checkValue
                            ? Center(
                                child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal:
                                            Config.xMargin(context, width: 4)),
                                    height:
                                        Config.yMargin(context, height: 120),
                                    // width: Config.xMargin(context, width: 100),
                                    child: GridView.count(
                                      crossAxisCount: 2,
                                      childAspectRatio:
                                          (itemWidth / itemHeight),
                                      physics: NeverScrollableScrollPhysics(),
                                      controller: new ScrollController(
                                          keepScrollOffset: false),
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      children: categoriesPros
                                          .map((e) => CategoryCardGrid(num: e))
                                          .toList(),
                                    )),
                              )
                            : Column(
                                children: categoriesPros
                                    .map((e) => CatgoryCardList())
                                    .toList(),
                              );
                      }
                    }),

                // CatgoryCardList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
