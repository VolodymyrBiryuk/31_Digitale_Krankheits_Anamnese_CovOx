import 'package:flutter/material.dart';

class NavigationBarWidget extends StatelessWidget {
  final String title;

  NavigationBarWidget({
    Key key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: FlatButton(onPressed: null, child: Text('<- zurück')),
      title: Text(''),
      actions: <Widget>[FlatButton(onPressed: null, child: Text('abbrechen'))],
    );
  }
}
