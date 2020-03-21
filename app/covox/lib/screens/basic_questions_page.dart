import 'package:flutter/material.dart';

class BasicQuestionsPage extends StatefulWidget {
  BasicQuestionsPage({Key key}) : super(key: key);

  @override
  _BasicQuestionsPageState createState() => _BasicQuestionsPageState();
}

class _BasicQuestionsPageState extends State<BasicQuestionsPage> {
  String dropdownValue = 'One';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      iconSize: 24,
      elevation: 16,
      style: TextStyle(color: Colors.deepPurple, fontSize: 30),
      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
        });
      },
      items: <String>['One', 'Two', 'Free', 'Four']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      hint: Text(
          "Select",
          style: TextStyle(
            color: Colors.grey,
          ),
      ),
    );
  }
}

// Scaffold(
//         appBar: AppBar(title: const Text(_title)),
//         body: GridView.count(
//           primary: false,
//           padding: const EdgeInsets.all(10),
//           crossAxisSpacing: 10,
//           mainAxisSpacing: 10,
//           crossAxisCount: 2,
//           childAspectRatio: 3,
//           children: <Widget>[
//             const Text('Geschlecht', style: TextStyle(fontSize: 30)),
//             Container(
//               child: MyStatefulWidget(),
//             ),
//             const Text('Alter', style: TextStyle(fontSize: 30)),
//             Container(
//               child: MyStatefulWidget(),
//             ),
//             const Text('Größe', style: TextStyle(fontSize: 30)),
//             Container(
//               child: MyStatefulWidget(),
//             ),
//             const Text('Gewicht', style: TextStyle(fontSize: 30)),
//             Container(
//               child: MyStatefulWidget(),
//             ),
//             const Text('Raucher', style: TextStyle(fontSize: 30)),
//             Container(
//               child: MyStatefulWidget(),
//             ),
//           ],
//         ),
//       ),