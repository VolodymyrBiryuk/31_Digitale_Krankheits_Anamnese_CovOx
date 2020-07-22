import 'package:equatable/equatable.dart';

abstract class QuestionnaireState extends Equatable {
  @override
  List<Object> get props => [];
}

class QuestionnaireUninitialized extends QuestionnaireState {
  @override
  String toString() => 'QuestionnaireUninitialized';
}

class QuestionnaireInProgress extends QuestionnaireState {
  @override
  String toString() => 'QuestionnaireInProgress';
}

class QuestionnaireNotDone extends QuestionnaireState {
  @override
  String toString() => 'QuestionnaireNotDone';
}

class QuestionnaireDone extends QuestionnaireState {
  @override
  String toString() => 'QuestionnaireDone';
}

class QuestionnaireSaving extends QuestionnaireState {
  @override
  String toString() => 'QuestionnaireSaving';
}

/* class QuestionnaireSaveError extends QuestionnaireState {
  final String error;

  QuestionnaireSaveError(this.error) : super([error]);

  @override
  String toString() => 'QuestionnaireSaveError { error: $error }';
} */
