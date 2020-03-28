import 'package:flutter/material.dart';

/// A reusable template widget that takes a title, main content as Widget and button text to build a page view.
class InstructionWidget extends StatelessWidget {
  final GlobalKey fbKey;
  final Image image;
  final String text;

  InstructionWidget({Key key, @required this.fbKey, this.image, this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          flex: 4,
          child: image,
        ),
        Expanded(flex: 1, child: Container()),
        Expanded(
            flex: 4,
            child: FractionallySizedBox(
              widthFactor: 0.7,
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: text,
                  style: Theme.of(context).textTheme.body1,
                ),
              ),
            )),
        Expanded(flex: 1, child: Container()),
      ],
    );
  }
}
