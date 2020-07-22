import 'package:flutter/material.dart';

/// A reusable template widget that takes a title, main content as Widget and button text to build a page view.
class TitleContentControl extends StatelessWidget {
  final GlobalKey fbKey;
  final String title;
  final Widget content;
  final Widget control;
  final double contentPadding;

  TitleContentControl({
    Key key,
    @required this.fbKey,
    @required this.title,
    @required this.content,
    this.contentPadding,
    @required this.control,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Set the content padding to 0 if nothing is passed.
    final _contentPadding = contentPadding != null ? contentPadding : 0.0;

    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
              // flex: 1,
              child: Align(
            alignment: Alignment.topCenter,
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: title,
                style: Theme.of(context).textTheme.headline,
              ),
            ),
          )),
          Expanded(
              // widthFactor: 0.61,
              flex: 5,
              child: Center(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(
                      _contentPadding, 0.0, _contentPadding, 0.0),
                  child: content,
                ),
              )),
          Container(
              margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 32),
              height: 55,
              width: MediaQuery.of(context).size.width * 0.65,
              child: control),
          /* Expanded(
              // widthFactor: 0.61,
              flex: 1,
              child: control), */
        ],
      ),
    );
  }
}
