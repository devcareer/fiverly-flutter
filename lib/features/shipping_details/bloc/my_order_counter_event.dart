part of 'my_order_counter_bloc.dart';

@immutable
abstract class MyOrderCounterEvent extends Equatable {
  List<Object> get props => [];
}

class ZeroEvent extends MyOrderCounterEvent {}

class OneEvent extends MyOrderCounterEvent {}

class TwoEvent extends MyOrderCounterEvent {}
