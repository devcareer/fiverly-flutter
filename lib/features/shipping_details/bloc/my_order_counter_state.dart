part of 'my_order_counter_bloc.dart';

@immutable
abstract class MyOrderCounterState extends Equatable {
  List<Object> get props => [];
}

class MyOrderCounterZero extends MyOrderCounterState {
  int i = 0;
}

class MyOrderCounterOne extends MyOrderCounterState {
  int i = 1;
}

class MyOrderCounterTwo extends MyOrderCounterState {
  int i = 2;
}
