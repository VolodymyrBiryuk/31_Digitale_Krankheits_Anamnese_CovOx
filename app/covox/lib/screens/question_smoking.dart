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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:NavigationBarWidget(
          context: context,
        ),
        body: Center(
          child: TitleContentButtonWidget(
            fbKey: new GlobalKey(),
            title: 'Rauchst du täglich?',
            mainContent: DualRadioButtonCard(
                option1: 'Ja',
                option2: 'Nein',
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

class RadioGroup extends StatefulWidget {
  @override
  RadioGroupWidget createState() => RadioGroupWidget();
}

class RadioGroupWidget extends State {
  
  // Default Radio Button Selected Item When App Starts.
  String radioButtonItem = 'ONE';

  // Group Value for Radio Button.
  int id = 1;

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
        padding: EdgeInsets.all(14.0),
        child: Text('Selected Radio Item = ' + '$radioButtonItem',
            style: TextStyle(fontSize: 21))
          ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Radio(
              value: 1,
              groupValue: id,
              onChanged: (val) {
                setState(() {
                  radioButtonItem = 'ONE';
                  id = 1;
                });
              },
            ),
            Text(
              'ONE',
              style: new TextStyle(fontSize: 17.0),
            ),

            Radio(
              value: 2,
              groupValue: id,
              onChanged: (val) {
                setState(() {
                  radioButtonItem = 'TWO';
                  id = 2;
                });
              },
            ),
            Text(
              'TWO',
              style: new TextStyle(
                fontSize: 17.0,
              ),
            ),
            
            Radio(
              value: 3,
              groupValue: id,
              onChanged: (val) {
                setState(() {
                  radioButtonItem = 'THREE';
                  id = 3;
                });
              },
            ),
            Text(
              'THREE',
              style: new TextStyle(fontSize: 17.0),
            ),
          ],
        ),
      ],
    );
  }
}
