import 'package:covox/screens/question_gender.dart';
import 'package:flutter/material.dart';
import 'package:covox/widgets/title_content_button_widget.dart';
import 'package:covox/widgets/navigation_bar.dart';

import 'measure_sauerstoff.dart';

/// The Greeting Page, where the user is informaed about the purpose of the App.
class AtemfrequenzPage2 extends StatefulWidget {
  AtemfrequenzPage2({Key key}) : super(key: key);

  @override
  _AtemfrequenzPage2State createState() => _AtemfrequenzPage2State();
}

class _AtemfrequenzPage2State extends State<AtemfrequenzPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: NavigationBarWidget(),
        appBar: NavigationBarWidget(
          context: context,
        ),
        body: TitleContentButtonWidget(
          fbKey: new GlobalKey(),
          title: '',
          // mainContent: MarkdownBody(data: _text_md, ),
          mainContent: Row(
            children: <Widget>[
              Expanded(
                flex: 9,
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/images/1_6_Atemfrequenz_Figur.png'),
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
                            text: 'Richte dich wieder auf\n',
                            style: TextStyle(
                                color: Theme.of(context).primaryColor),
                          ),
                          TextSpan(
                            text: 'drücke WEITER\n',
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
      builder: (BuildContext context) => SauerstoffPage(),
    ));
  }
}
