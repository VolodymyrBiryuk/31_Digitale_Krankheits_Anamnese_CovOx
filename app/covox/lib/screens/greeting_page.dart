import 'package:covox/screens/question_gender.dart';
import 'package:covox/util/enter_exit_route.dart';
import 'package:covox/util/slide_left_routine.dart';
import 'package:covox/util/slide_right_routine.dart';
import 'package:flutter/material.dart';
import 'package:covox/widgets/title_content_button_widget.dart';
import 'package:covox/widgets/navigation_bar.dart';

/// The Greeting Page, where the user is informaed about the purpose of the App.
class GreetingPage extends StatefulWidget {
  GreetingPage({Key key}) : super(key: key);

  @override
  _GreetingPageState createState() => _GreetingPageState();
}

class _GreetingPageState extends State<GreetingPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: NavigationBarWidget(),
        appBar: NavigationBarWidget(
          context: null,
        ),
        body: TitleContentButtonWidget(
          fbKey: new GlobalKey(),
          title: 'VORAB',
          // mainContent: MarkdownBody(data: _text_md, ),
          mainContent: Container(
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: Theme.of(context).textTheme.body1.copyWith(fontSize: 20),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Hallo liebe Nutzer:in!\n',
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  ),
                  TextSpan(
                    text: 'Bevor du mit dem Messen\n',
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  ),
                  TextSpan(
                    text: 'starten kannst, brauchen wir\n',
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  ),
                  TextSpan(
                    text: 'noch ein paar Angaben von dir.\n',
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  ),
                  TextSpan(
                    text:
                        'Alle deine Daten werden auf deinem Handy gespeichert und\n',
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  ),
                  TextSpan(
                    text:
                        'nur im Notfall mit deinem Einverständnis verschlüsselt\n',
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  ),
                  TextSpan(
                    text: 'an Fachpersonal weitergegeben.\n',
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  ),
                  TextSpan(
                    text: 'Wenn du soweit bist drücke\n',
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  ),
                  TextSpan(
                    text: 'LOS GEHT\'S\n',
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  ),
                ],
              ),
            ),
          ),
          buttonText: 'LOS GEHT\'S',
          buttonAction: losGehts,
        ));
  }

  void losGehts() {
    // Navigator.of(context).push(MaterialPageRoute(
    //   builder: (BuildContext context) => QuestionGender(),
    // ));
    Navigator.push(context, EnterExitRoute(exitPage: GreetingPage(), enterPage: QuestionGender()));
  }
}
