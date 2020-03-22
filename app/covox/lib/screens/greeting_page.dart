import 'package:flutter/material.dart';
import 'package:covox/widgets/drop_down_widget.dart';
import 'package:covox/widgets/title_content_button_widget.dart';
import 'package:covox/widgets/navigation_bar.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

/// The Greeting Page, where the user is informaed about the purpose of the App.
class GreetingPage extends StatefulWidget {
  GreetingPage({Key key}) : super(key: key);

  @override
  _GreetingPageState createState() => _GreetingPageState();
}

class _GreetingPageState extends State<GreetingPage> {
  // static const _text_md = '''
  // ### Hallo liebe Nutzer:in!

  // ### Bevor du mit dem Messen starten kannst,
  
  // ### brauchen wir noch ein paar Angaben von dir.
  
  // ### Alle deine Daten werden auf deinem Handy gespeichert und
  
  // ### nur im Notfall mit deinem Einverständnis verschlüsselt
  
  // ### an Fachpersonal weitergegeben.

  // ### Wenn du soweit bist drücke
  
  // ### LOS GEHT’S
  // ''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: NavigationBarWidget(),
        body: TitleContentButtonWidget(
          fbKey: new GlobalKey(),
          title: 'VORAB',
          // mainContent: MarkdownBody(data: _text_md, ),
          mainContent: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: Theme.of(context).textTheme.body1.copyWith(fontSize: 25),
              children: <TextSpan>[
                TextSpan(
                  text: 'Hallo liebe Nutzer:in!\n',
                  style: TextStyle(color: Theme.of(context).primaryColor),
                ),
                TextSpan(
                  text: 'Bevor du mit dem Messen\n',
                  style: TextStyle(color: Theme.of(context).primaryColor),
                ),
                TextSpan(
                  text: 'brauchen wir noch ein paar Angaben von dir.\n',
                  style: TextStyle(color: Theme.of(context).primaryColor),
                ),
                TextSpan(
                  text: 'Alle deine Daten werden auf deinem Handy gespeichert und\n',
                  style: TextStyle(color: Theme.of(context).primaryColor),
                ),
                TextSpan(
                  text: 'nur im Notfall mit deinem Einverständnis verschlüsselt\n',
                  style: TextStyle(color: Theme.of(context).primaryColor),
                ),
                TextSpan(
                  text: 'an Fachpersonal weitergegeben.\n',
                  style: TextStyle(color: Theme.of(context).primaryColor),
                ),
                TextSpan(
                  text: 'Wenn du soweit bist drücke\n',
                  style: TextStyle(color: Theme.of(context).primaryColor),
                ),
                TextSpan(
                  text: 'LOS GEHT’S\n',
                  style: TextStyle(color: Theme.of(context).primaryColor),
                ),
              ],
            ),
          ),
          buttonText: 'WEITER',
        ));
  }
}
