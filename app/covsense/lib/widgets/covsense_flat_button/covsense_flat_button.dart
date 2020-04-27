import 'package:flutter/material.dart';

/// A reusable template widget that takes a title, main content as Widget and button text to build a page view.
class CovsenseFlatButton extends StatelessWidget {
  final GlobalKey fbKey;
  final String text;
  final VoidCallback onPressAction;

  CovsenseFlatButton(
      {Key key, @required this.fbKey, this.text, this.onPressAction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      textColor: Theme.of(context).primaryColor,
      disabledTextColor: Theme.of(context).accentColor,
      child: Text(
        text,
      ),
      onPressed: () => onPressAction(),
    );
  }
}
