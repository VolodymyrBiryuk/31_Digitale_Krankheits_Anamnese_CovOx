import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

abstract class QuestionnaireEvent extends Equatable {
  const QuestionnaireEvent();

  @override
  List<Object> get props => [];
}

class AppStarted extends QuestionnaireEvent {}

class FinishQuestionnaire extends QuestionnaireEvent {
  final Map<String, dynamic> questionnaire;

  const FinishQuestionnaire({@required this.questionnaire});

  @override
  List<Object> get props => [questionnaire];

  @override
  String toString() => '${questionnaire.toString()}';
}

class ResetQuestionnaire extends QuestionnaireEvent {}
