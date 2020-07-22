import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

abstract class SignInEvent extends Equatable {
  const SignInEvent();
}

class SignInButtonPressed extends SignInEvent {
  final String username;
  final String password;

  const SignInButtonPressed({
    @required this.username,
    @required this.password,
  });

  @override
  List<Object> get props => [username, password];

  @override
  String toString() =>
      'SignInButtonPressed { username: $username, password: $password }';
}