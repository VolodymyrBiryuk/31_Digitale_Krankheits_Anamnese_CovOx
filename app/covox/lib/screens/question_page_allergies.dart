import 'package:flutter/material.dart';
import 'package:covox/widgets/drop_down_widget.dart';

class QuestionsPageAllergies extends StatefulWidget {
  QuestionsPageAllergies({Key key}) : super(key: key);

  @override
  _QuestionsPageAllergiesState createState() => _QuestionsPageAllergiesState();
}

class _QuestionsPageAllergiesState extends State<QuestionsPageAllergies> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text('Basic Questions'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              DropDown(
                fbKey: new GlobalKey(),
                attribute: 'geschlecht',
                labelText: 'Geschlecht',
                itemsList: ['M', 'W', 'D'],
              ),
              DropDown(
                fbKey: new GlobalKey(),
                attribute: 'alter',
                labelText: 'Alter',
                itemsList: ['M', 'W', 'D'],
              ),
              DropDown(
                fbKey: new GlobalKey(),
                attribute: 'größe',
                labelText: 'Größe',
                itemsList: ['M', 'W', 'D'],
              ),
              DropDown(
                fbKey: new GlobalKey(),
                attribute: 'gewicht',
                labelText: 'Gewicht',
                itemsList: ['M', 'W', 'D'],
              ),
              DropDown(
                fbKey: new GlobalKey(),
                attribute: 'raucher',
                labelText: 'raucher',
                itemsList: ['oft', 'gelegentlich', 'nie'],
              ),
              const RaisedButton(
                onPressed: null,
                child: Text('Next', style: TextStyle(fontSize: 20)),
              ),
            ],
          ),
        ));
  }
}
