import 'package:flutter/material.dart';
import 'package:covox/widgets/title_content_button_widget.dart';
import 'package:covox/widgets/radio_button_widget.dart';

class QuestionDiabetes extends StatefulWidget {
  QuestionDiabetes({Key key}) : super(key: key);

  @override
  _QuestionDiabetes createState() => _QuestionDiabetes();
}

class _QuestionDiabetes extends State<QuestionDiabetes> {
  int selectedValue;
  List<RadioButtonOptions> answers = [
    RadioButtonOptions(
      index: 1,
      name: "Ja",
    ),
    RadioButtonOptions(
      index: 2,
      name: "Nein",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text('Basic Questions'),
        ),
        body: Center(
          child: TitleContentButtonWidget(
            fbKey: new GlobalKey(),
            title: 'Hast du Diabetes?',
            mainContent: RadioButtonGroup(
                optionsList: answers,
                selectedValue: selectedValue,
                onChanged: (int selectionValue) {
                  setState(() {
                    selectedValue = selectionValue;
                });
              }),
            buttonText: 'WEITER',
          ),
        ));
  }
}

