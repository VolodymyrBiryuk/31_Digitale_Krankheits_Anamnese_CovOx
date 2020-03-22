import 'package:covox/screens/question_gender.dart';
import 'package:flutter/material.dart';
import 'package:covox/widgets/title_content_button_widget.dart';
import 'package:covox/widgets/navigation_bar.dart';

import 'measure_blutdruck.dart';

/// The Greeting Page, where the user is informaed about the purpose of the App.
class SauerstoffPage2 extends StatefulWidget {
  SauerstoffPage2({Key key}) : super(key: key);

  @override
  _SauerstoffPage2State createState() => _SauerstoffPage2State();
}

class _SauerstoffPage2State extends State<SauerstoffPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: NavigationBarWidget(),
        appBar: NavigationBarWidget(
          context: context,
        ),
        body: TitleContentButtonWidget(
          fbKey: new GlobalKey(),
          title: '3. Sauerstoffsättigung',
          // mainContent: MarkdownBody(data: _text_md, ),
          mainContent: Row(
            children: <Widget>[
              Expanded(
                flex: 9,
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/images/1_7_Sauerstoff_Hand_Sensor.png'),
                    SizedBox(height: 50),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: Theme.of(context)
                            .textTheme
                            .body1
                            .copyWith(fontSize: 20),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Gleich geht es weiter ...\n',
                            style: TextStyle(
                                color: Theme.of(context).primaryColor),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                  flex: 1,
                  child: Column(
                    children: <Widget>[
                      Icon(
                        Icons.check_circle,
                        size: 30,
                        color: Theme.of(context).primaryColor,
                      ),
                      SizedBox(height: 20),
                      Icon(
                        Icons.check_circle,
                        size: 30,
                        color: Theme.of(context).primaryColor,
                      ),
                      SizedBox(height: 20),
                      Icon(
                        Icons.check_circle,
                        size: 30,
                        color: Theme.of(context).primaryColorLight,
                      ),
                      SizedBox(height: 20),
                      Icon(
                        Icons.radio_button_unchecked,
                        size: 30,
                        color: Theme.of(context).primaryColor,
                      ),
                      SizedBox(height: 20),
                      Icon(
                        Icons.radio_button_unchecked,
                        size: 30,
                        color: Theme.of(context).primaryColor,
                      ),
                    ],
                  ))
            ],
          ),
          buttonText: 'WEITER',
          buttonAction: losGehts,
        ));
  }

  void losGehts() {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (BuildContext context) => BlutdruckPage(),
    ));
  }
}
