import 'package:covox/screens/question_gender.dart';
import 'package:flutter/material.dart';
import 'package:covox/widgets/title_content_button_widget.dart';
import 'package:covox/widgets/navigation_bar.dart';

/// The Greeting Page, where the user is informaed about the purpose of the App.
class SplashPage extends StatefulWidget {
  SplashPage({Key key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: NavigationBarWidget(),
        appBar: NavigationBarWidget(
          context: null,
        ),
        body: Center(
            child: FittedBox(
          child: Image.asset('assets/images/0_0_App_Name.png'),
              fit: BoxFit.fill,
            ),
          ),
        );
  }

  void losGehts() {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (BuildContext context) => QuestionGender(),
    ));
  }
}
