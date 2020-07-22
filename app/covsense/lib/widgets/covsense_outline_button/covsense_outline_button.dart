import 'package:flutter/material.dart';

/// A reusable template widget that takes a title, main content as Widget and button text to build a page view.
class CovsenseOutlneButton extends StatelessWidget {
  final GlobalKey fbKey;
  final String text;
  final VoidCallback onPress;

  CovsenseOutlneButton(
      {Key key, @required this.fbKey, this.text, this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlineButton(
        color: Theme.of(context).accentColor,
        textColor: Theme.of(context).primaryColor,
        child: Text(
          text,
          style: TextStyle(fontSize: 20.0),
        ),
        onPressed: () => onPress(),
        shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(30.0)));
  }
}
