import 'package:covox/screens/question_diabetes.dart';
import 'package:flutter/material.dart';
import 'package:covox/widgets/title_content_button_widget.dart';
import 'package:covox/widgets/radio_button_widget.dart';
import 'package:covox/widgets/navigation_bar.dart';

class QuestionSmoking extends StatefulWidget {
  QuestionSmoking({Key key}) : super(key: key);

  @override
  _QuestionSmokingState createState() => _QuestionSmokingState();
}

class _QuestionSmokingState extends State<QuestionSmoking> {
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
        appBar:NavigationBarWidget(
          context: context,
        ),
        body: Center(
          child: TitleContentButtonWidget(
            fbKey: new GlobalKey(),
            title: 'Rauchst du?',
            mainContent: RadioButtonGroup(
                optionsList: answers,
                selectedValue: selectedValue,
                onChanged: (int selectionValue) {
                  setState(() {
                    selectedValue = selectionValue;
                });
              }),
            buttonText: 'WEITER',
            buttonAction: next,
          ),
        ));
  }
  void next() {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (BuildContext context) => QuestionDiabetes(),
    ));
  }
}


