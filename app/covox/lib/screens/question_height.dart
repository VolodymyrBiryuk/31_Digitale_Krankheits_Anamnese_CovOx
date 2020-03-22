import 'package:flutter/material.dart';
import 'package:covox/widgets/title_content_button_widget.dart';
import 'package:covox/widgets/increment_widget.dart';

class QuestionHeight extends StatefulWidget {
  QuestionHeight({Key key}) : super(key: key);

  @override
  _QuestionHeightState createState() => _QuestionHeightState();
}

class _QuestionHeightState extends State<QuestionHeight> {
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
            title: 'Wie groß bist du?',
            mainContent: IncrementField(
                initValue: 160,
                unit: 'cm',
                ),
            buttonText: 'WEITER',
          ),
        ));
  }
}