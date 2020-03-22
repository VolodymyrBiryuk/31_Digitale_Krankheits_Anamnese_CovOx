import 'package:covox/screens/question_smoking.dart';
import 'package:covox/screens/take_a_seat_page.dart';
import 'package:covox/util/enter_exit_route.dart';
import 'package:covox/widgets/action_raised_button.dart';
import 'package:covox/widgets/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:covox/widgets/title_content_button_widget.dart';

class QuestionMedDoc extends StatefulWidget {
  QuestionMedDoc({Key key}) : super(key: key);

  @override
  _QuestionMedDocState createState() => _QuestionMedDocState();
}

class _QuestionMedDocState extends State<QuestionMedDoc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: NavigationBarWidget(
          context: context,
        ),
        body: Center(
          child: TitleContentButtonWidget(
            fbKey: new GlobalKey(),
            title: 'Hast du medizinische Dokumente?',
            mainContent: Column(
              children: <Widget>[
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: Theme.of(context)
                        .textTheme
                        .body1
                        .copyWith(fontSize: 20),
                    children: <TextSpan>[
                      TextSpan(
                        text:
                            'Fotografiere deine aktuellsten medizinischen Dokumente, z.B. dein letzten Brief von der Ärzt:in, Medikamentenplan etc.',
                        style: TextStyle(color: Theme.of(context).primaryColor),
                      ),
                      TextSpan(
                        text: '\n',
                        style: TextStyle(color: Theme.of(context).primaryColor),
                      ),
                      TextSpan(
                        text:
                            'Drücke KAMERA, um deine Kamera einzuschalten und die Dokumente abzufotografieren',
                        style: TextStyle(color: Theme.of(context).primaryColor),
                      ),
                      TextSpan(
                        text: '\n',
                        style: TextStyle(color: Theme.of(context).primaryColor),
                      ),
                      TextSpan(
                        text:
                            'Wenn du keine Dokumente mehr hast, dann drücke WEITER, um die Angaben abzuschließen. Im PROFIL kannst du deine Angaben jederzeit aktualisieren.',
                        style: TextStyle(color: Theme.of(context).primaryColor),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 50),
                ActionRaisedButtonWidget(
                    fbKey: GlobalKey(), text: 'KAMERA')
              ],
            ),
            buttonText: 'WEITER',
            buttonAction: next,
          ),
        ));
  }

  void next() {
    /* Navigator.of(context).push(MaterialPageRoute(
      builder: (BuildContext context) => QuestionSmoking(),
    )); */
    Navigator.push(context,
        EnterExitRoute(exitPage: QuestionMedDoc(), enterPage: TakeASeatPage()));
  }
}
