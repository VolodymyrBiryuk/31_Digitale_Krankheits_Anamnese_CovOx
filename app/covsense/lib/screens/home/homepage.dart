import 'package:covox/blocs/auth/index.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: null,
        body: Column(
          children: <Widget>[
            Container(
              child: Center(
                  child: RaisedButton(
                child: Text('logout'),
                onPressed: () {
                  BlocProvider.of<AuthBloc>(context).add(SignedOut());
                },
              )),
            ),
          ],
        ));
  }
}
