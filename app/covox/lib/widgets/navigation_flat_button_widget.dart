import 'package:flutter/material.dart';

/// A reusable template widget that takes a title, main content as Widget and button text to build a page view.
class NavigationFlatButtonWidget extends StatelessWidget {
  final GlobalKey fbKey;
  final String text;

  NavigationFlatButtonWidget({
    Key key,
    @required this.fbKey,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      textColor: Theme.of(context).primaryColor,
      child: Text(text),
      onPressed: () => print(text),
    );
  }
}
