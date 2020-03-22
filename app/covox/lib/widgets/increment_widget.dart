import 'package:flutter/material.dart';

class IncrementField extends StatefulWidget {
  final int initValue;
  final String unit;

  IncrementField(
      {Key key,
      this.initValue,
      this.unit})
      : super(key: key);

  @override
  _IncrementFieldState createState() => _IncrementFieldState();
}

class _IncrementFieldState extends State<IncrementField> {
  int _n;
  String radioItem;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _n = widget.initValue;
  }

  void add() {
  setState(() {
    _n++;
  });
}

void minus() {
  setState(() {
    if (_n != 0) 
      _n--;
  });
}

  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
              new FloatingActionButton(
                onPressed: add,
                child: new Icon(Icons.add, color: Colors.black,),
                backgroundColor: Colors.white,),
                
              Padding(padding: const EdgeInsets.all(10.0),),   

              new Text('$_n ' + widget.unit,
                style: new TextStyle(fontSize: 40.0)),

              Padding(padding: const EdgeInsets.all(10.0),), 

              new FloatingActionButton(
                onPressed: minus,
                child: new Icon(
                const IconData(0xe15b, fontFamily: 'MaterialIcons'),
                color: Colors.black),
                backgroundColor: Colors.white,),  

              Padding(padding: const EdgeInsets.all(40.0),)   
        ],
    );
  }
}
