import 'package:covox/widgets/navigation_bar.dart';
import 'package:covox/widgets/title_content_button_widget.dart';
import 'package:flutter/material.dart';

import 'measure_sauerstoff2.dart';

/// The Greeting Page, where the user is informaed about the purpose of the App.
class SauerstoffPage1 extends StatefulWidget {
  SauerstoffPage1({Key key}) : super(key: key);

  @override
  _SauerstoffPage1State createState() => _SauerstoffPage1State();
}

class _SauerstoffPage1State extends State<SauerstoffPage1> {
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
                            text: 'Drücke auf SATRT. Leg das\n',
                            style: TextStyle(
                                color: Theme.of(context).primaryColor),
                          ),
                          TextSpan(
                            text: 'rote Licht auf den\n',
                            style: TextStyle(
                                color: Theme.of(context).primaryColor),
                          ),
                          TextSpan(
                            text: 'Zeigefinger. Warte bis die\n',
                            style: TextStyle(
                                color: Theme.of(context).primaryColor),
                          ),
                          TextSpan(
                            text: 'Zeit vorbei ist und der Ton erklingt\n',
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
      builder: (BuildContext context) => SauerstoffPage2(),
    ));
  }
}
