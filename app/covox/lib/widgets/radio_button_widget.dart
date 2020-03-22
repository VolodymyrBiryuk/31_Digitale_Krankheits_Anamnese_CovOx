import 'package:flutter/material.dart';


class DualRadioButtonCard extends StatefulWidget {
  final int selectedValue;
  final String option1;
  final String option2;
  final Function onChanged;

  DualRadioButtonCard(
      {Key key,
      this.option1,
      this.option2,
      this.onChanged,
      this.selectedValue})
      : super(key: key);

  @override
  DualRadioOptionCardState createState() => DualRadioOptionCardState();
}

class DualRadioOptionCardState extends State<DualRadioButtonCard> {
  int selectedValue;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    selectedValue = -1;
  }

  @override
  Widget build(BuildContext context) {

    return Card(
      elevation: 3.0,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              Radio(
                value: 0,
                activeColor: Colors.green,
                groupValue: widget.selectedValue,
                onChanged: widget.onChanged,
              ),
              Text(widget.option1),
              Radio(
                value: 1,
                activeColor: Colors.green,
                groupValue: widget.selectedValue,
                onChanged: widget.onChanged,
              ),
              Text(widget.option2),
            ])
          ]),
    );
  }
}
