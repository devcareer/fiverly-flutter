import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'my_order_counter_event.dart';
part 'my_order_counter_state.dart';

class MyOrderCounterBloc
    extends Bloc<MyOrderCounterEvent, MyOrderCounterState> {
  MyOrderCounterBloc() : super(MyOrderCounterZero());

  @override
  Stream<MyOrderCounterState> mapEventToState(
    MyOrderCounterEvent event,
  ) async* {
    if (event is ZeroEvent) {
      yield MyOrderCounterZero();
    } else if (event is OneEvent) {
      yield MyOrderCounterOne();
    } else if (event is TwoEvent) {
      yield MyOrderCounterTwo();
    }
  }
}
