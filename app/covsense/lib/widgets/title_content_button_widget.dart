import 'package:covox/widgets/progress_indicator_widget.dart';
import 'package:flutter/material.dart';
import 'package:covox/widgets/action_raised_button.dart';

/// A reusable template widget that takes a title, main content as Widget and button text to build a page view.
class TitleContentButtonWidget extends StatelessWidget {
  final GlobalKey fbKey;
  final String title;
  final String buttonText;
  final Widget mainContent;
  final ProgressIndicatorWidget progressIndicator;
  final VoidCallback buttonAction;

  TitleContentButtonWidget({
    Key key,
    @required this.fbKey,
    this.title,
    this.buttonText,
    this.progressIndicator,
    this.buttonAction,
    this.mainContent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
              flex: 2,
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
              flex: 6,
              child: Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerRight,
                    child: progressIndicator,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: mainContent,
                  ),
                ],
              )),
          Expanded(
              // widthFactor: 0.61,
              flex: 1,
              child: ActionRaisedButtonWidget(
                fbKey: GlobalKey(),
                text: buttonText,
                onPressAction: buttonAction,
              )),
        ],
      ),
    );
  }
}
