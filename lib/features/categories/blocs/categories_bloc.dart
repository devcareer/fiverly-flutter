import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fiverly_flutter/features/reviews_rating/repositories/checkValue.dart';
import 'package:meta/meta.dart';

// the event of the bloc  starts here

abstract class LayoutEvent extends Equatable {
  const LayoutEvent();
  @override
  List<Object> get props => [];
}

class LoadEvent extends LayoutEvent {
  LoadEvent();
}

// the event of the bloc  ends here

abstract class LayoutState extends Equatable {
  const LayoutState();
  @override
  List<Object> get props => [];
}

class LayoutInitial extends LayoutState {
  bool checkValue;
  LayoutInitial({@required this.checkValue});
  List<Object> get props => [checkValue];
}

class LayoutChange extends LayoutState {
  LayoutChange();
}

class LayoutBloc extends Bloc<LayoutEvent, LayoutState> {
  Check checkRepo = Check();
  LayoutBloc() : super(LayoutInitial(checkValue: true));

  @override
  Stream<LayoutState> mapEventToState(
    LayoutEvent event,
  ) async* {
    if (event is LoadEvent) {
      var stateValue = !state.props[0];
      // yield LayoutChange();
      yield LayoutInitial(checkValue: stateValue);
    }
  }
}
