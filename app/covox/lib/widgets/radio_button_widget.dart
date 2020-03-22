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
    // TODO: implement initState
    super.initState();

    selectedValue = -1;
  }

  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: 
                widget.optionsList.map((data) => RadioListTile(
                  title: Text("${data.name}", style: TextStyle(fontSize: 25)),
                  groupValue: selectedValue,
                  value: data.index,
                  onChanged: (val) {
                    setState(() {
                      radioItem = data.name ;
                      selectedValue = data.index;
                    });
                  },
                )).toList(),
                ),          
        ],
    );
  }
}
