import 'package:flutter/material.dart';

class TermsOfServiceText extends StatelessWidget {
  const TermsOfServiceText({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RichText(
        softWrap: true,
        textAlign: TextAlign.justify,
        text: TextSpan(style: Theme.of(context).textTheme.body1, children: [
          TextSpan(text: 'Hallo liebe Nutzer:in!\n'),
          TextSpan(text: '\n'),
          TextSpan(
              text:
                  'Bevor du mit dem Messen starten kannst, brauchen wir noch ein paar Angaben von dir. Alle deine Daten werden auf deinem Handy lokal gespeichert und nur mit deinem Einverständnis verschlüsselt an eingewiesenes Fachpersonal weitergegeben.\n'),
          TextSpan(text: '\n'),
          TextSpan(text: 'Wenn du soweit bist, drücke LOS GEHT’S'),
        ]),
      ),
    );
  }
}
