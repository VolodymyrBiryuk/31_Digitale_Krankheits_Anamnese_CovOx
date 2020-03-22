import 'package:covox/screens/question_smoking.dart';
import 'package:flutter/material.dart';
import 'package:covox/widgets/title_content_button_widget.dart';

class QuestionMedDoc extends StatefulWidget {
  QuestionMedDoc({Key key}) : super(key: key);

  @override
  _QuestionMedDocState createState() => _QuestionMedDocState();
}

class _QuestionMedDocState extends State<QuestionMedDoc> {
  final String text = 
  "Fotografiere deine aktuellsten\n"
  "medizinischen Dokumente, z.B\n"
  "den letzten Brief von der Ärzt:in,\n"
  "Medikamentenplan, ect.\n"
  "\n"
  "Drücke WEITER, um deine Kamera\n"
  "einzuschalten und die Dokumente\n"
  "abzufotografieren\n"
  "\n"
  "Wenn du keine Dokumente mehr\n"
  "hast, dann drücke BEENDEN, um\n"
  "die Angaben abzuschließen. Im\n"
  "Profil kannst du deine Angaben\n"
  "jederzeit aktualisieren.";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text('Basic Questions'),
        ),
        body: Center(
          child:  TitleContentButtonWidget(
            fbKey: new GlobalKey(),
            title: 'Hast du medizinische Dokumente?',
            mainContent: Text(text),
            buttonText: 'WEITER',
            buttonAction: next,
          ),
        ));
  }
  void next() {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (BuildContext context) => QuestionSmoking(),
    ));
  }
}