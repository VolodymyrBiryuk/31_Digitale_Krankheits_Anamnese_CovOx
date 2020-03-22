import 'package:flutter/material.dart';
import 'package:covox/widgets/title_content_button_widget.dart';
import 'package:covox/widgets/navigation_bar.dart';
class QuestionAge extends StatefulWidget {
  QuestionAge({Key key}) : super(key: key);

  @override
  _QuestionAgeState createState() => _QuestionAgeState();
}

class _QuestionAgeState extends State<QuestionAge> {
  int selectedValue;
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
            mainContent: RadioGroup(),
            buttonText: 'WEITER',
          ),
        ));
  }
}

class RadioGroup extends StatefulWidget {
  @override
  RadioGroupWidget createState() => RadioGroupWidget();
}

class RadioGroupWidget extends State {
  

  // Group Value for Radio Button.
  int id;

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
              Radio(
                value: 1,
                groupValue: id,
                onChanged: (val) {
                  setState(() {
                    id = 1;
                  });
                },
              ),
              Text(
                'unter 40 Jahre',
                style: new TextStyle(fontSize: 17.0),
              ),
              ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.center, 
              children: <Widget>[
              Radio(
                value: 2,
                groupValue: id,
                onChanged: (val) {
                  setState(() {
                    id = 2;
                  });
                },
              ),
              Text(
                '41-50 Jahre',
                style: new TextStyle(
                  fontSize: 17.0,
                ),
              ),
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.center, 
              children: <Widget>[
              Radio(
                value: 3,
                groupValue: id,
                onChanged: (val) {
                  setState(() {
                    id = 3;
                  });
                },
              ),
              Text(
                '51 - 60 Jahre',
                style: new TextStyle(fontSize: 17.0),
              ),
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.center, 
              children: <Widget>[
              Radio(
                value: 4,
                groupValue: id,
                onChanged: (val) {
                  setState(() {
                    id = 4;
                  });
                },
              ),
              Text(
                '61 - 70 Jahre',
                style: new TextStyle(fontSize: 17.0),
              ),
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.center, 
              children: <Widget>[
              Radio(
                value: 5,
                groupValue: id,
                onChanged: (val) {
                  setState(() {
                    id = 5;
                  });
                },
              ),
              Text(
                '71 - 80 Jahre',
                style: new TextStyle(fontSize: 17.0),
              ),
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.center, 
              children: <Widget>[
              Radio(
                value: 6,
                groupValue: id,
                onChanged: (val) {
                  setState(() {
                    id = 6;
                  });
                },
              ),
              Text(
                'über 80 Jahre',
                style: new TextStyle(fontSize: 17.0),
              ),
            ])
          ],
        ),
      ],
    );
  }
}
