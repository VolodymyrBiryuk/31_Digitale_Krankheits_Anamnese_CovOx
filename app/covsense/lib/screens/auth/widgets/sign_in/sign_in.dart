import 'dart:async';
import 'dart:io';

import 'package:covox/widgets/covsense_flat_button/covsense_flat_button.dart';
import 'package:covox/widgets/covsense_raised_button/index.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new SignInState();
}

class SignInState extends State<SignIn> {
  String _username = '';
  String _password = '';
  final _formKey = GlobalKey<FormState>();
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(children: <Widget>[
          // SizedBox(height: 20.0),
          // SizedBox(height: 20.0),
          Container(
            height: 85,
            child: TextFormField(
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
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            height: 85,
            child: TextFormField(
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
          ),
          CovsenseFlatButton(
            fbKey: GlobalKey(),
            text: 'Forgot password?',
            onPressAction: () => print('Forgot password'),
          ), // TODO: Implement the forgot password workflow.
          _isLoading
              ? Center(
                  child: CircularProgressIndicator(
                  valueColor:
                      AlwaysStoppedAnimation(Theme.of(context).primaryColor),
                ))
              : CovsenseRaisedButton(
                  fbKey: GlobalKey(),
                  text: 'Sign In',
                  onPressAction: () {
                    if (_formKey.currentState.validate()) {
                      // Trigger sign in process if the entered information is valid.
                      signInPressed();
                    }
                  },
                ),
          Row(
            children: <Widget>[
              Text(
                'Don\'t have an account?',
                style: Theme.of(context).textTheme.body2,
              ),
              CovsenseFlatButton(
                fbKey: GlobalKey(),
                text: 'Sign up',
                onPressAction: () => print('Sign up'),
              ),
            ],
          ) // TODO: Implement the forgot password workflow.
        ]));
  }

  void signInPressed() async {
    setState(() {
      _isLoading = true;
    });

    await Future.delayed(Duration(seconds: 3));

    setState(() {
      _isLoading = false;
    });

    Navigator.pushNamed(context, '/home');
  }
}
