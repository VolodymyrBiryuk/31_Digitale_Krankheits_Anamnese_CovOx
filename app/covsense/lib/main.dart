import 'package:covox/screens/greeting_page.dart';
import 'package:covox/screens/splash_screen.dart';
import 'package:covox/screens/take_a_seat_page.dart';
import 'package:covox/screens/test_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';
  static const Color primaryColor = Color.fromARGB(255, 50, 157, 156);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
          appBarTheme: AppBarTheme(
            color: Colors.white,
          ),
          brightness: Brightness.light,
          accentColor: Colors.white,
          fontFamily: 'Montserrat',
          textTheme: TextTheme(
              body1: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w500,
                  fontSize: 16.0,
                  color: primaryColor),
              headline: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Montserrat',
                  color: primaryColor),
              title: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic)),
          buttonTheme: ButtonThemeData(
            buttonColor: primaryColor,
            textTheme: ButtonTextTheme.accent,
            minWidth: 100.0,
            height: 50.0,
            colorScheme:
                Theme.of(context).colorScheme.copyWith(secondary: Colors.white),
          ),
          primaryColor: primaryColor
          // primarySwatch: primaryColor,
          ),
      // home: SplashScreen(),
      home: TestPage(),
    );
  }
}
