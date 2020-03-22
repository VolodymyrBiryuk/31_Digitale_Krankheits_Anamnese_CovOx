import 'package:flutter/material.dart';
import 'package:covox/screens/greeting_page.dart';

class NavigationBarWidget extends AppBar {
  NavigationBarWidget({Key key, Widget title, BuildContext context})
      : super(
            key: key,
            titleSpacing: 0.0,
            title: context != null
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                          height: 20, // Your Height
                          width: 150, // Your width
                          child: FlatButton.icon(
                            icon: Icon(Icons.arrow_back),
                            textColor: Theme.of(context).primaryColor,
                            // textColor: Colors.cyan,
                            label: Text('zurück'),
                            onPressed: () => Navigator.of(context).pop(),
                          ))
                      // Your widgets here
                    ],
                  )
                : null,
            backgroundColor: Colors.transparent,
            bottomOpacity: 0.0,
            elevation: 0.0,
            automaticallyImplyLeading: false,
            actions: context != null
                ? <Widget>[
                    FlatButton(
                      textColor: Theme.of(context).primaryColor,
                      child: Text('abbrechen'),
                      onPressed: () =>
                          Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => GreetingPage(),
                      )),
                    )
                  ]
                : <Widget>[]);
}
