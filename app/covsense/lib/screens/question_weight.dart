import 'package:covox/screens/question_smoking.dart';
import 'package:covox/util/enter_exit_route.dart';
import 'package:covox/widgets/navigation_bar.dart';
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
        appBar: NavigationBarWidget(
          context: context,
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
            buttonAction: next,
          ),
        ));
  }
  void next() {
    /* Navigator.of(context).push(MaterialPageRoute(
      builder: (BuildContext context) => QuestionSmoking(),
    )); */
    Navigator.push(context, EnterExitRoute(exitPage: QuestionWeight(), enterPage: QuestionSmoking()));
  }
}