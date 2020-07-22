import 'package:covox/screens/measur_heartFreq_0.dart';
import 'package:covox/widgets/navigation_bar.dart';
import 'package:covox/widgets/title_content_button_widget.dart';
import 'package:flutter/material.dart';


/// The Greeting Page, where the user is informaed about the purpose of the App.
class BlutdruckPage extends StatefulWidget {
  BlutdruckPage({Key key}) : super(key: key);

  @override
  _BlutdruckPageState createState() => _BlutdruckPageState();
}

class _BlutdruckPageState extends State<BlutdruckPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: NavigationBarWidget(),
        appBar: NavigationBarWidget(
          context: context,
        ),
        body: TitleContentButtonWidget(
          fbKey: new GlobalKey(),
          title: '4. Blutdruck',
          // mainContent: MarkdownBody(data: _text_md, ),
          mainContent: Row(
            children: <Widget>[
              Expanded(
                flex: 9,
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/images/1_10_Blutdruck_Kamera.png'),
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
                            text: 'Nun wird deine Frontkamera\n',
                            style: TextStyle(
                                color: Theme.of(context).primaryColor),
                          ),
                          TextSpan(
                            text: 'eingeschaltet und du wirst\n',
                            style: TextStyle(
                                color: Theme.of(context).primaryColor),
                          ),
                          TextSpan(
                            text: 'dich selber sehen.\n',
                            style: TextStyle(
                                color: Theme.of(context).primaryColor),
                          ),
                          TextSpan(
                            text: 'Drücke dafür WEITER\n',
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
      builder: (BuildContext context) => MeasureHeartFreq0(),
    ));
  }
}
