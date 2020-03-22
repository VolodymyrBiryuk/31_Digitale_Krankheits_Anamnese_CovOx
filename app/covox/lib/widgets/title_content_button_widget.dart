import 'package:flutter/material.dart';
import 'package:covox/widgets/action_raised_button.dart';

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
            Container(
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style:
                      Theme.of(context).textTheme.body1.copyWith(fontSize: 30),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'VORAB',
                      style: TextStyle(color: Theme.of(context).primaryColor),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: mainContent,
            ),
            Container(
                child: ActionRaisedButtonWidget(
              fbKey: GlobalKey(),
              text: 'Los Geht\'s',
            )),
          ],
        ),
      ),
    );
  }
}
