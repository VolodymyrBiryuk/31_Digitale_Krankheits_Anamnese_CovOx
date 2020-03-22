import 'package:covox/screens/question_height.dart';
import 'package:covox/util/enter_exit_route.dart';
import 'package:flutter/material.dart';
import 'package:covox/widgets/title_content_button_widget.dart';
import 'package:covox/widgets/radio_button_widget.dart';
import 'package:covox/widgets/navigation_bar.dart';
class QuestionAge extends StatefulWidget {
  QuestionAge({Key key}) : super(key: key);

  @override
  _QuestionAgeState createState() => _QuestionAgeState();
}

class _QuestionAgeState extends State<QuestionAge> {
  int selectedValue;
    List<RadioButtonOptions> answers = [
    RadioButtonOptions(
      index: 1,
      name: "unter 40 Jahre",
    ),
    RadioButtonOptions(
      index: 2,
      name: "41 - 50 Jahre",
    ),
    RadioButtonOptions(
      index: 3,
      name: "51 - 60 Jahre",
    ),
    RadioButtonOptions(
      index: 4,
      name: "61 - 70 Jahre",
    ),
    RadioButtonOptions(
      index: 5,
      name: "71 - 80 Jahre",
    ),
    RadioButtonOptions(
      index: 6,
      name: "über 81 Jahre",
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
            title: 'Wie alt bist du?',
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
      builder: (BuildContext context) => QuestionHeight(),
    )); */
    Navigator.push(context, EnterExitRoute(exitPage: QuestionAge(), enterPage: QuestionHeight()));
  }
}

