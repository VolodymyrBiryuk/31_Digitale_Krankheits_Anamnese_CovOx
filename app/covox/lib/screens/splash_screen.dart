import 'package:covox/screens/question_gender.dart';
import 'package:flutter/material.dart';
import 'package:covox/widgets/title_content_button_widget.dart';
import 'package:covox/widgets/navigation_bar.dart';

/// The Greeting Page, where the user is informaed about the purpose of the App.
class SplashScreen extends StatefulWidget {
  SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: NavigationBarWidget(),
        appBar: NavigationBarWidget(
          context: null,
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: ExactAssetImage('assets/images/splash.png'),
                fit: BoxFit.cover),
          ),
        ));
  }

  void losGehts() {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (BuildContext context) => QuestionGender(),
    ));
  }
}
