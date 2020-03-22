import 'package:flutter/material.dart';

/// A reusable template widget that takes a title, main content as Widget and button text to build a page view.
class ActionRaisedButtonWidget extends StatelessWidget {
  final GlobalKey fbKey;
  final String text;
  final VoidCallback onPressAction;

  ActionRaisedButtonWidget({
    Key key,
    @required this.fbKey,
    this.text,
    this.onPressAction
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      width: 250.0,
      child: RaisedButton(
          color: Theme.of(context).primaryColor,
          textColor: Theme.of(context).accentColor,
          child: Text(text,
          style: TextStyle(
            fontSize: 20.0
          ),),
          onPressed: () => onPressAction(),
          shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(30.0))),
    );
  }
}
