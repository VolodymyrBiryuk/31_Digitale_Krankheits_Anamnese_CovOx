import 'package:equatable/equatable.dart';

abstract class TermsOfServiceEvent extends Equatable {
  const TermsOfServiceEvent();

  @override
  List<Object> get props => [];
}

class AppStarted extends TermsOfServiceEvent {}

class AcceptedTermsOfService extends TermsOfServiceEvent {
  @override
  String toString() => 'TermsOfServiceAccepted';
}

class RejectedTermsOfService extends TermsOfServiceEvent {
  @override
  String toString() => 'TermsOfServiceRejected';
}

class TermsOfServiceAcceptedButtonPressed extends TermsOfServiceEvent {
  final String termsOfServiceStatus = 'accepted';

  const TermsOfServiceAcceptedButtonPressed();

  @override
  List<Object> get props => [termsOfServiceStatus];

  @override
  String toString() =>
      'TermsOfServiceAcceptedButtonPressed { termsOfServiceStatus: $termsOfServiceStatus }';
}
