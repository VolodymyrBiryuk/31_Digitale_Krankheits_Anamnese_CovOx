import 'package:flutter/material.dart';
import 'package:covox/widgets/title_content_button_widget.dart';
import 'package:covox/widgets/increment_widget.dart';

class QuestionWeight extends StatefulWidget {
  QuestionWeight({Key key}) : super(key: key);

  @override
  _QuestionWeightState createState() => _QuestionWeightState();
}

class _QuestionWeightState extends State<QuestionWeight> {
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
            title: 'Wie viel wiegst du?',
            mainContent: IncrementField(
                initValue: 60,
                unit: 'kg',
                ),
            buttonText: 'WEITER',
          ),
        ));
  }
}