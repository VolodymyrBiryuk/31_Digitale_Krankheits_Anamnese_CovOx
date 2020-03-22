import 'package:flutter/material.dart';

/// A reusable template widget that takes a title, main content as Widget and button text to build a page view.
class ActionRaisedButtonWidget extends StatelessWidget {
  final GlobalKey fbKey;
  final String text;

  ActionRaisedButtonWidget({
    Key key,
    @required this.fbKey,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
        color: Theme.of(context).primaryColor,
        textColor: Theme.of(context).accentColor,
        child: Text(text),
        onPressed: () => print(text),
        shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(30.0)));
  }
}
