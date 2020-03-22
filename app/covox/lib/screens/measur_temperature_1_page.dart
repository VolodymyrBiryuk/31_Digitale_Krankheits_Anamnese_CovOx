import 'package:covox/screens/question_gender.dart';
import 'package:flutter/material.dart';
import 'package:covox/widgets/title_content_button_widget.dart';
import 'package:covox/widgets/navigation_bar.dart';

/// The Greeting Page, where the user is informaed about the purpose of the App.
class MeasureTemperaturePage1 extends StatefulWidget {
  MeasureTemperaturePage1({Key key}) : super(key: key);

  @override
  _MeasureTemperaturePage1State createState() => _MeasureTemperaturePage1State();
}

class _MeasureTemperaturePage1State extends State<MeasureTemperaturePage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: NavigationBarWidget(),
        appBar: NavigationBarWidget(
          context: context,
        ),
        body: TitleContentButtonWidget(
          fbKey: new GlobalKey(),
          title: 'Nimm Platz',
          // mainContent: MarkdownBody(data: _text_md, ),
          mainContent: Row(
            children: <Widget>[
              Expanded(
                flex: 9,
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/images/1_2_Temperatur_Figur_mit_Infrarot.png'),
                    SizedBox(height: 50),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: Theme.of(context)
                            .textTheme
                            .body1
                            .copyWith(fontSize: 20),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Suche dir einen Platz an!\n',
                            style: TextStyle(
                                color: Theme.of(context).primaryColor),
                          ),
                          TextSpan(
                            text: 'den du sitzen kannst\n',
                            style: TextStyle(
                                color: Theme.of(context).primaryColor),
                          ),
                          TextSpan(
                            text: 'zwischendurch auch nach\n',
                            style: TextStyle(
                                color: Theme.of(context).primaryColor),
                          ),
                          TextSpan(
                            text: 'hinten lehnen kannst.\n',
                            style: TextStyle(
                                color: Theme.of(context).primaryColor),
                          ),
                          TextSpan(
                            text: 'Dann drücke Weiter.\n',
                            style: TextStyle(
                                color: Theme.of(context).primaryColor),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                  flex: 1,
                  child: Column(
                    children: <Widget>[
                      Icon(
                        Icons.check_circle,
                        size: 30,
                        color: Theme.of(context).primaryColorLight,
                      ),
                      SizedBox(height: 20),
                      Icon(
                        Icons.radio_button_unchecked,
                        size: 30,
                        color: Theme.of(context).primaryColor,
                      ),
                      SizedBox(height: 20),
                      Icon(
                        Icons.radio_button_unchecked,
                        size: 30,
                        color: Theme.of(context).primaryColor,
                      ),
                      SizedBox(height: 20),
                      Icon(
                        Icons.radio_button_unchecked,
                        size: 30,
                        color: Theme.of(context).primaryColor,
                      ),
                      SizedBox(height: 20),
                      Icon(
                        Icons.radio_button_unchecked,
                        size: 30,
                        color: Theme.of(context).primaryColor,
                      ),
                    ],
                  ))
            ],
          ),
          buttonText: 'WEITER',
          buttonAction: losGehts,
        ));
  }

  void losGehts() {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (BuildContext context) => MeasureTemperaturePage1(),
    ));
  }
}
