import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

abstract class SignInState extends Equatable {
  const SignInState();

  @override
  List<Object> get props => [];
}

class SignInInitial extends SignInState {}

class SignInLoading extends SignInState {}

class SignInFailure extends SignInState {
  final String error;

  const SignInFailure({@required this.error});

  @override
  List<Object> get props => [error];

  @override
  String toString() => 'SignInFailure { error: $error }';
}