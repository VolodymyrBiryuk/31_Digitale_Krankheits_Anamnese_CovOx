import 'package:covox/screens/question_weight.dart';
import 'package:covox/util/enter_exit_route.dart';
import 'package:flutter/material.dart';
import 'package:covox/widgets/title_content_button_widget.dart';
import 'package:covox/widgets/navigation_bar.dart';
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
        appBar: NavigationBarWidget(
          context: context,
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
            buttonAction: next,
          ),
        ));
  }
  void next() {
    /* Navigator.of(context).push(MaterialPageRoute(
      builder: (BuildContext context) => QuestionWeight(),
    )); */
    Navigator.push(context, EnterExitRoute(exitPage: QuestionHeight(), enterPage: QuestionWeight()));
  }
}
