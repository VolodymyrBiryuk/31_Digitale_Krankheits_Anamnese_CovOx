import 'dart:async';
import 'package:covox/blocs/terms_of_service/terms_of_service_event.dart';
import 'package:covox/blocs/terms_of_service/terms_of_service_repository.dart';
import 'package:covox/blocs/terms_of_service/terms_of_service_state.dart';
import 'package:meta/meta.dart';
import 'package:bloc/bloc.dart';

class TermsOfServiceBloc
    extends Bloc<TermsOfServiceEvent, TermsOfServiceState> {
  final TermsOfServiceRepository termsOfServiceRepository;

  TermsOfServiceBloc({@required this.termsOfServiceRepository})
      : assert(termsOfServiceRepository != null);

  @override
  TermsOfServiceState get initialState => TermsOfServiceUninitialized();

  @override
  Stream<TermsOfServiceState> mapEventToState(
    TermsOfServiceEvent event,
  ) async* {
    // When the app starts check if the user already accepted the TOS
    if (event is AppStarted) {
      final bool isTermsOfServiceRejected =
          await termsOfServiceRepository.isTermsOfServiceRejected();
      final bool isTermsOfServiceAccepted =
          await termsOfServiceRepository.isTermsOfServiceAccepted();

      // Check if the user rejected the TOS
      if (isTermsOfServiceRejected) {
        yield TermsOfServiceRejected();
      }
      // If the user accepted the TOS
      if (isTermsOfServiceAccepted) {
        yield TermsOfServiceAccepted();
      } else {
        // Not accepted is the default state not the same as rejected.
        yield TermsOfServiceNotAccepted();
      }
    }

    // When the user accepts the TOS set the state accordingly
    if (event is AcceptedTermsOfService) {
      yield TermsOfServiceSaving();
      await termsOfServiceRepository.saveTermsOfServiceState(
          termsOfServiceState: 'accepted');
      yield TermsOfServiceAccepted();
    }

    // When the user rejects the TOS set the state accordingly
    if (event is RejectedTermsOfService) {
      yield TermsOfServiceSaving();
      await termsOfServiceRepository.saveTermsOfServiceState(
          termsOfServiceState: 'rejected');
      yield TermsOfServiceRejected();
    }
  }
}
