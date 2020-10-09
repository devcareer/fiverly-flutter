import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'auths_bloc_event.dart';
part 'auths_bloc_state.dart';

class AuthsBlocBloc extends Bloc<AuthsBlocEvent, AuthsBlocState> {
  AuthsBlocBloc() : super(AuthsBlocInitial());

  @override
  Stream<AuthsBlocState> mapEventToState(
    AuthsBlocEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
