import 'package:equatable/equatable.dart';

abstract class TermsOfServiceState extends Equatable {
  @override
  List<Object> get props => [];
}

class TermsOfServiceUninitialized extends TermsOfServiceState {
  @override
  String toString() => 'TermsOfServiceUninitialized';
}

class TermsOfServiceAccepted extends TermsOfServiceState {
  @override
  String toString() => 'TermsOfServiceAccepted';
}

class TermsOfServiceNotAccepted extends TermsOfServiceState {
  @override
  String toString() => 'TermsOfServiceNotAccepted';
}

class TermsOfServiceRejected extends TermsOfServiceState {
  @override
  String toString() => 'TermsOfServiceRejected';
}

class TermsOfServiceSaving extends TermsOfServiceState {
  @override
  String toString() => 'TermsOfServiceSaving';
}
