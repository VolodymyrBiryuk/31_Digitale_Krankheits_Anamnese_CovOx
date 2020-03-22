import 'package:flutter/material.dart';
import 'package:covox/widgets/drop_down_widget.dart';
import 'package:covox/widgets/title_content_button_widget.dart';
import 'package:covox/widgets/navigation_bar.dart';

/// The Greeting Page, where the user is informaed about the purpose of the App.
class GreetingPage extends StatefulWidget {
  GreetingPage({Key key}) : super(key: key);

  @override
  _GreetingPageState createState() => _GreetingPageState();
}

class _GreetingPageState extends State<GreetingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          leading: FlatButton(onPressed: null, child: Text('zurück')),
          titleSpacing: 0.0,
          title: null,
          actions: <Widget>[
            FlatButton(onPressed: null, child: Text('abbrechen'))
          ],
        ),
        body: TitleContentButtonWidget(
          fbKey: new GlobalKey(),
          title: 'VORAB',
          mainContent: Text(
              'Hallo liebe Nutzer:in! Bevor es mit dem Messen los geht, brauchen wir noch ein paar Angaben von dir. Alle deine Daten werden auf deinem Handy gespeichert und nur mit deinem Einverständnis weitergegeben.'),
          buttonText: 'WEITER',
        )
      );
  }
}
