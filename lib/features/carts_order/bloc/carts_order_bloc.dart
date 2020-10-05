import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'carts_order_event.dart';
part 'carts_order_state.dart';

class CartsOrderBloc extends Bloc<CartsOrderEvent, CartsOrderState> {
  CartsOrderBloc() : super(CartsOrderInitial());

  @override
  Stream<CartsOrderState> mapEventToState(
    CartsOrderEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
