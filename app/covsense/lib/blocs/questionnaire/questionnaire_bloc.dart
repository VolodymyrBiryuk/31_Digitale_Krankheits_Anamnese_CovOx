import 'dart:async';

import 'package:covox/blocs/questionnaire/questionnaire_event.dart';
import 'package:covox/blocs/questionnaire/questionnaire_repository.dart';
import 'package:covox/blocs/questionnaire/questionnaire_state.dart';
import 'package:meta/meta.dart';
import 'package:bloc/bloc.dart';

class QuestionnaireBloc extends Bloc<QuestionnaireEvent, QuestionnaireState> {
  final QuestionnaireRepository questionnaireRepository;

  QuestionnaireBloc({@required this.questionnaireRepository})
      : assert(questionnaireRepository != null);

  @override
  QuestionnaireState get initialState => QuestionnaireUninitialized();

  @override
  Stream<QuestionnaireState> mapEventToState(
    QuestionnaireEvent event,
  ) async* {
    if (event is AppStarted) {
      final bool isQuestionnaireDone =
          await questionnaireRepository.isQuestionnaireDone();

      if (isQuestionnaireDone) {
        yield QuestionnaireDone();
      } else {
        yield QuestionnaireNotDone();
      }
    }

    if (event is FinishQuestionnaire) {
      // Signal that the saving of the questionnaire is in porgress (for progress indicator).
      yield QuestionnaireSaving();
      // Get the questionnaire from the event
      Map<String, dynamic> q = event.questionnaire;
      // Save questionnaire with the repository function e.g. save to local DB or send to API.
      await questionnaireRepository.saveQuestionnaire(
          gender: q['gender'],
          sex: q['sex'],
          ageGroup: q['ageGroup'],
          height: q['height'],
          weight: q['weight'],
          isSmoking: q['isSmoking'],
          hasDiabetes: q['hasDiabetes'],
          hasPreconditions: q['hasPreconditions']);
      // Signal that the save event is done
      yield QuestionnaireDone();
    }

    if (event is ResetQuestionnaire) {
      yield QuestionnaireSaving();
      await questionnaireRepository.resetQuestionnaire();
      yield QuestionnaireNotDone();
    }
  }
}
