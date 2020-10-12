import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fiverly_flutter/features/reviews_rating/repositories/checkValue.dart';
import 'package:flutter/rendering.dart';
import 'package:meta/meta.dart';

// the event of the bloc  starts here

abstract class ReviewRatingEvent extends Equatable {
  const ReviewRatingEvent();
  @override
  List<Object> get props => [];
}

class LoadEvent extends ReviewRatingEvent {
  bool value;
  LoadEvent({@required this.value});
}

// the event of the bloc  ends here

abstract class ReviewRatingState extends Equatable {
  const ReviewRatingState();
  @override
  List<Object> get props => [];
}

class ReviewRatingInitial extends ReviewRatingState {
  bool checkValue;
  ReviewRatingInitial({@required this.checkValue});
}

class ReviewRating extends ReviewRatingState {
  ReviewRating();
}

class ReviewRatingBloc extends Bloc<ReviewRatingEvent, ReviewRatingState> {
  Check checkRepo = Check();
  ReviewRatingBloc() : super(ReviewRatingInitial(checkValue: false));

  @override
  Stream<ReviewRatingState> mapEventToState(
    ReviewRatingEvent event,
  ) async* {
    if (event is LoadEvent) {
      yield ReviewRating();
      print(event.value);
      var stateValue = checkRepo.checkValue(event.value);
      print(stateValue);
      print("state value");
      yield ReviewRatingInitial(checkValue: stateValue);
    }
  }
}
