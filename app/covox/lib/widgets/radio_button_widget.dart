import 'package:flutter/material.dart';

class RadioButtonOptions {
  String name;
  int index;
  RadioButtonOptions({this.name, this.index});
}
class RadioButtonGroup extends StatefulWidget {
  final int selectedValue;
  final Function onChanged;
  final List<RadioButtonOptions> optionsList;

  RadioButtonGroup(
      {Key key,
      this.onChanged,
      this.selectedValue,
      this.optionsList})
      : super(key: key);

  @override
  RadioButtonGroupState createState() => RadioButtonGroupState();
}

class RadioButtonGroupState extends State<RadioButtonGroup> {
  int selectedValue;
  String radioItem;

  @override
  void initState() {
    super.initState();

    selectedValue = -1;
  }

  @override
  Widget build(BuildContext context) {

    return Column(
          children: <Widget>[
            Column(
              children: <Widget>[
                Padding(padding: const EdgeInsets.only(
                  left: 40,
                  top: 0,
                  right: 40,
                  bottom: 40,
                ),
                child: Column(
                  children: 
                    widget.optionsList.map((data) => RadioListTile(
                      title: Text("${data.name}", style: TextStyle(fontSize: 25)),
                      activeColor: Colors.green,
                      groupValue: selectedValue,
                      value: data.index,
                      onChanged: (val) {
                        setState(() {
                          selectedValue = data.index;
                        });
                      },
                    )).toList(),
                    ),     
                )     
          ],
    ),
    ]);
  }
}
