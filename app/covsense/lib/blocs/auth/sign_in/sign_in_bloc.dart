import 'dart:async';
import 'package:covox/blocs/auth/sign_in/sign_in_state.dart';
import 'package:meta/meta.dart';
import 'package:bloc/bloc.dart';

import '../auth_bloc.dart';
import '../auth_event.dart';
import '../user_repository.dart';
import 'sign_in_event.dart';
import 'sign_in_state.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final UserRepository userRepository;
  final AuthBloc authBloc;

  SignInBloc({
    @required this.userRepository,
    @required this.authBloc,
  })  : assert(userRepository != null),
        assert(authBloc != null);

  SignInState get initialState => SignInInitial();

  @override
  Stream<SignInState> mapEventToState(SignInEvent event) async* {
    if (event is SignInButtonPressed) {
      yield SignInLoading();
      try {
        final token = await userRepository.authenticate(
          username: event.username,
          password: event.password,
        );

        authBloc.add(SignedIn(token: token));
        yield SignInInitial();
      } catch (error) {
        yield SignInFailure(error: error.toString());
      }
    }
  }
}
