import 'package:flutter/material.dart';
import 'package:covox/widgets/action_raised_button.dart';

/// A reusable template widget that takes a title, main content as Widget and button text to build a page view.
class TitleContentButtonWidget extends StatelessWidget {
  final GlobalKey fbKey;
  final String title;
  final String buttonText;
  final Widget mainContent;
  final VoidCallback buttonAction;

  TitleContentButtonWidget({
    Key key,
    @required this.fbKey,
    this.title,
    this.buttonText,
    this.buttonAction,
    this.mainContent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                height: 100.0,
                child: Align(
                  alignment: Alignment.topCenter,
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: Theme.of(context)
                          .textTheme
                          .body1
                          .copyWith(fontSize: 30),
                      children: <TextSpan>[
                        TextSpan(
                          text: title,
                          style:
                              TextStyle(color: Theme.of(context).primaryColor),
                        ),
                      ],
                    ),
                  ),
                )),
            Center(
              child: Container(
               height: 300.0,
               child: mainContent, 
              ),
            ),
            Container(
                child: ActionRaisedButtonWidget(
              fbKey: GlobalKey(),
              text: buttonText,
              onPressAction: buttonAction,
            )),
          ],
        ),
      ),
    );
  }
}
