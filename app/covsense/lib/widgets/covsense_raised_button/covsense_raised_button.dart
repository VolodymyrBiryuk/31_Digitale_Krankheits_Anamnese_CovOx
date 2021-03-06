import 'package:flutter/material.dart';

/// A reusable template widget that takes a title, main content as Widget and button text to build a page view.
class CovsenseRaisedButton extends StatelessWidget {
  final GlobalKey fbKey;
  final String text;
  final VoidCallback onPressed;

  CovsenseRaisedButton(
      {Key key, @required this.fbKey, this.text, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        color: Theme.of(context).primaryColor,
        textColor: Theme.of(context).accentColor,
        child: Text(
          text,
          style: TextStyle(fontSize: 20.0),
        ),
        onPressed: () => onPressed(),
        shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(30.0)));
  }
}
