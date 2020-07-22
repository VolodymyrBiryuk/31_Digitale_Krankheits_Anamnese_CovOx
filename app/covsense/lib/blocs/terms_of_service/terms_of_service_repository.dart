import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TermsOfServiceRepository {
  /* TermsOfServiceRepository._();

  static Future<TermsOfServiceRepository> getInstance() async {
    var instance = TermsOfServiceRepository._();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('termsOfServiceState', '');
    return instance;
  } */

  Future<String> saveTermsOfServiceState({
    @required String termsOfServiceState,
  }) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('termsOfServiceState', termsOfServiceState);
    String result = prefs.getString('termsOfServiceState');
    return result;
  }

  Future<bool> isTermsOfServiceRejected() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String termsOfServiceState = prefs.getString('termsOfServiceState');
    return termsOfServiceState == 'rejected';
  }

  Future<bool> isTermsOfServiceAccepted() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String termsOfServiceState = prefs.getString('termsOfServiceState');
    return termsOfServiceState == 'accepted';
  }
}
