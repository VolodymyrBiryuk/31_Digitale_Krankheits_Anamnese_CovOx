import 'package:covox/screens/greeting_page.dart';
import 'package:covox/screens/splash.dart';
import 'package:covox/screens/splash_screen.dart';
import 'package:covox/screens/take_a_seat_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

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
        fontFamily: 'Monserrat',
        textTheme: TextTheme(
          body1: TextStyle(fontSize: 25.0, color: Colors.cyan),
            headline: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
            title: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic)),
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.cyan,
          textTheme: ButtonTextTheme.accent,
          minWidth: 100.0,
          height: 50.0,
          colorScheme:
              Theme.of(context).colorScheme.copyWith(secondary: Colors.white),
        ),
        primarySwatch: Colors.cyan,
      ),
      // home: SplashScreen(),
      home: TakeASeatPage(),
    );
  }
}

