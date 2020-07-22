import 'dart:io';

import 'package:covox/screens/greeting_page.dart';
import 'package:covox/widgets/navigation_bar.dart';
import 'package:flutter/material.dart';

/// The Greeting Page, where the user is informaed about the purpose of the App.
class SplashScreen extends StatefulWidget {
  SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool _visible = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initApp().then((initStatus) {
      // Navigator.pushReplacement(
      //     context, MaterialPageRoute(builder: (context) => GreetingPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: NavigationBarWidget(),
        appBar: NavigationBarWidget(
          context: null,
        ),
        body: AnimatedOpacity(
            // If the widget is visible, animate to 0.0 (invisible).
            // If the widget is hidden, animate to 1.0 (fully visible).
            opacity: _visible ? 1.0 : 0.0,
            duration: Duration(milliseconds: 500),
            // The green box must be a child of the AnimatedOpacity widget.
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: ExactAssetImage('assets/images/splash.png'),
                    fit: BoxFit.cover),
              ),
            )));
  }

  /* Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: ExactAssetImage('assets/images/splash.png'),
                fit: BoxFit.cover),
          ),
        ) */

  Future<void> initApp() async {
    setState(() {
      sleep(const Duration(seconds: 3));
      _visible = false;
    });
    return Future;
  }
}
