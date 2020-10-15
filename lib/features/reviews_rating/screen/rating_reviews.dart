import 'package:fiverly_flutter/cores/util/config.dart';
import 'package:fiverly_flutter/cores/util/style.dart';
import 'package:fiverly_flutter/features/reviews_rating/blocs/review_rating_bloc.dart';
import 'package:fiverly_flutter/features/reviews_rating/components/review_bottom_sheet.dart';
import 'package:fiverly_flutter/features/reviews_rating/components/review_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RatingReviews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final checkRepo = ReviewRatingBloc();
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      appBar: AppBar(title: Text("Rating and reviews")),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              child: BlocBuilder<ReviewRatingBloc, ReviewRatingState>(
                cubit: checkRepo,
                builder: (context, state) {
                  if (state is ReviewRatingInitial) {
                    return Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: Config.xMargin(context, width: 6.4)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "${checkRepo.checkRepo.reviews.length}  reviews",
                                style: black(
                                  Config.textSize(context, 5),
                                ),
                              ),
                              Row(children: [
                                Checkbox(
                                    activeColor: Colors.black,
                                    value: state.checkValue,
                                    onChanged: (value) {
                                      print("$value  this is dynamic value");
                                      checkRepo.add(LoadEvent(value: value));
                                    }),
                                Text("with photo")
                              ])
                            ],
                          ),
                        ),
                        Column(
                          children: checkRepo.checkRepo.reviews
                              .map((e) => ReviewCard())
                              .toList(),
                        )
                      ],
                    );
                  }
                },
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(Config.xMargin(context, width: 6)),
            child: Align(
                alignment: Alignment.bottomRight,
                child: GestureDetector(
                  onTap: () => reviewRatingBottomSheet(context),
                  child: Container(
                    height: Config.yMargin(context, height: 6.5),
                    width: Config.xMargin(context, width: 35),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(
                          Config.xMargin(context, width: 5)),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.edit,
                            color: Colors.white,
                          ),
                          Text(
                            "write a review",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                )),
          )
        ],
      ),
    );
  }
}
