import 'package:covox/util/enter_exit_route.dart';
import 'package:flutter/material.dart';
import 'package:covox/widgets/title_content_button_widget.dart';
import 'package:covox/widgets/radio_button_widget.dart';
import 'package:covox/widgets/navigation_bar.dart';
import 'package:covox/screens/question_bioGender.dart';

class QuestionGender extends StatefulWidget {
  QuestionGender({Key key}) : super(key: key);

  @override
  _QuestionGenderState createState() => _QuestionGenderState();
}

class _QuestionGenderState extends State<QuestionGender> {
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
    RadioButtonOptions(
      index: 3,
      name: "Divers",
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
            title: 'Welches Geschlecht hast du?',
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
      builder: (BuildContext context) => QuestionBioGender(),
    )); */
    Navigator.push(context, EnterExitRoute(exitPage: QuestionGender(), enterPage: QuestionBioGender()));
  }
}
