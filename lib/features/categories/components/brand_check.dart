import 'package:fiverly_flutter/cores/util/config.dart';
import 'package:fiverly_flutter/features/reviews_rating/blocs/review_rating_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BrandCheck extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final checkRepo = ReviewRatingBloc();
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: Config.xMargin(context, width: 4),
      ),
      child: BlocBuilder<ReviewRatingBloc, ReviewRatingState>(
        cubit: checkRepo,
        builder: (context, state) {
          if (state is ReviewRatingInitial) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "adidas Originals",
                  style: TextStyle(
                      color: state.checkValue ? Colors.red : Colors.black),
                ),
                Checkbox(
                  activeColor: Colors.red,
                  value: state.checkValue,
                  onChanged: (value) {
                    checkRepo.add(LoadEvent(value: value));
                  },
                ),
              ],
            );
          }
        },
      ),
    );
  }
}
