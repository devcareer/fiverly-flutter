import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'shiping_event.dart';
part 'shiping_state.dart';

class ShipingBloc extends Bloc<ShipingEvent, ShipingState> {
  ShipingBloc() : super(ShipingInitial());

  @override
  Stream<ShipingState> mapEventToState(
    ShipingEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
