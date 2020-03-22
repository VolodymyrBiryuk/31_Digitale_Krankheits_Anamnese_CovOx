import 'package:flutter/material.dart';

/// A reusable template widget that takes a title, main content as Widget and button text to build a page view.
class TitleContentButtonWidget extends StatelessWidget {
  final GlobalKey fbKey;
  final String title;
  final String buttonText;
  final Widget mainContent;

  TitleContentButtonWidget({
    Key key,
    @required this.fbKey,
    this.title,
    this.buttonText,
    this.mainContent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: ListView(
          children: <Widget>[
            Text(title),
            Container(
              child: mainContent,
            ),
            Container(
              child: RaisedButton(
                  child: Text(buttonText),
                  onPressed: null,
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0))),
            ),
          ],
        ),
      ),
    );
  }
}
