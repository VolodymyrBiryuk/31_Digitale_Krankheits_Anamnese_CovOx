import 'package:flutter/material.dart';

class QuestionnaireRepository {
  Future<bool> saveQuestionnaire({
    @required String gender,
    @required String sex,
    @required String ageGroup,
    @required int height,
    @required int weight,
    @required bool isSmoking,
    @required bool hasDiabetes,
    @required List<String> hasPreconditions,
  }) async {
    await Future.delayed(Duration(seconds: 2));
    return true;
  }

  Future<void> resetQuestionnaire() async {
    /// delete from keystore/keychain
    await Future.delayed(Duration(seconds: 1));
    return;
  }

  Future<bool> isQuestionnaireDone() async {
    await Future.delayed(Duration(seconds: 2));
    return false;
  }
}
