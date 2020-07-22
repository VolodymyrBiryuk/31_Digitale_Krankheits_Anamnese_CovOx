import 'dart:io';

import 'package:covox/widgets/covsense_raised_button/index.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new SignUpState();
}

class SignUpState extends State<SignUp> {
  String _username = '';
  String _password = '';
  final _formKey = GlobalKey<FormState>();
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(children: <Widget>[
          SizedBox(height: 20.0),
          SizedBox(height: 20.0),
          TextFormField(
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter username.';
                } else {
                  setState(() {
                    _username = value;
                  });
                }
                return null;
              },
              onSaved: (value) => _username = value,
              decoration: InputDecoration(labelText: 'Username')),
          TextFormField(
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter password.';
                } else {
                  setState(() {
                    _password = value;
                  });
                }
                return null;
              },
              onSaved: (value) => _password = value,
              obscureText: true,
              decoration: InputDecoration(labelText: 'Password')),
          SizedBox(height: 20.0),
          _isLoading
              ? Center(child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(Theme.of(context).primaryColor),
              ))
              : CovsenseRaisedButton(
                  fbKey: GlobalKey(),
                  text: 'Sign In',
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      // Trigger sign in process if the entered information is valid.
                      signUpPressed();
                    }
                  },
                ),
          FlatButton(
              onPressed: null,
              child: Text(
                  'Already have an account? Sign in')) // TODO: Implement the forgot password workflow.
        ]));
  }

  void signUpPressed() async {
    setState(() {
      _isLoading = true;
    });
    print(_username);
    print(_password);
    sleep(const Duration(seconds: 3));

    setState(() {
      _isLoading = false;
    });
  }
}
