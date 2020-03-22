import 'package:covox/screens/question_age.dart';
import 'package:covox/util/enter_exit_route.dart';
import 'package:flutter/material.dart';

import 'package:covox/widgets/title_content_button_widget.dart';

import 'package:covox/widgets/radio_button_widget.dart';

import 'package:covox/widgets/navigation_bar.dart';

class QuestionBioGender extends StatefulWidget {
  QuestionBioGender({Key key}) : super(key: key);

  @override
  _QuestionBioGender createState() => _QuestionBioGender();
}

class _QuestionBioGender extends State<QuestionBioGender> {
  int selectedValue;
  List<RadioButtonOptions> answers = [
    RadioButtonOptions(
      index: 1,
      name: "Weiblich",
    ),
    RadioButtonOptions(
      index: 2,
      name: "Männlich",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: NavigationBarWidget(
          context: context,
        ),
        body: Center(
          child: TitleContentButtonWidget(
            fbKey: new GlobalKey(),
            title: 'Welches biologische Geschlecht hast du?',
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
    /* Navigator.of(context).push(MaterialPageRoute(
      builder: (BuildContext context) => QuestionAge(),
    )); */
    Navigator.push(context, EnterExitRoute(exitPage: QuestionBioGender(), enterPage: QuestionAge()));
  }
}
