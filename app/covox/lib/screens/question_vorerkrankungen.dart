import 'package:flutter/material.dart';
import 'package:covox/widgets/title_content_button_widget.dart';
import 'package:covox/widgets/radio_button_widget.dart';
import 'package:covox/widgets/navigation_bar.dart';

class QuestionGender extends StatefulWidget {
  QuestionGender({Key key}) : super(key: key);

  @override
  _QuestionBioGenderState createState() => _QuestionBioGenderState();
}

class _QuestionBioGenderState extends State<QuestionGender> {
  int selectedValue;
  List<RadioButtonOptions> answers = [
    RadioButtonOptions(
      index: 1,
      name: "Lunge",
    ),
    RadioButtonOptions(
      index: 2,
      name: "Herz-Kreislauf",
    ),
    RadioButtonOptions(
      index: 3,
      name: "Niere",
    ),
    RadioButtonOptions(
      index: 4,
      name: "Keine Davon",
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
          ),
        ));
  }
}