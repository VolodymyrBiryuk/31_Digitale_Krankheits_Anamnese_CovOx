import 'dart:async';

import 'package:covox/blocs/auth/user_repository.dart';

import 'auth_event.dart';
import 'auth_state.dart';
import 'package:meta/meta.dart';
import 'package:bloc/bloc.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final UserRepository userRepository;

  AuthBloc({@required this.userRepository})
      : assert(userRepository != null);

  @override
  AuthState get initialState => AuthUninitialized();

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    if (event is AppStarted) {
      final bool hasToken = await userRepository.hasToken();

      if (hasToken) {
        yield AuthAuthenticated();
      } else {
        yield AuthUnauthenticated();
      }
    }

    if (event is SignedIn) {
      yield AuthLoading();
      await userRepository.persistToken(event.token);
      yield AuthAuthenticated();
    }

    if (event is SignedOut) {
      yield AuthLoading();
      await userRepository.deleteToken();
      yield AuthUnauthenticated();
    }
  }
}
