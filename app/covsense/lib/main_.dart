import 'package:covox/screens/auth/index.dart';
import 'package:covox/screens/greeting_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';
  static const Color primaryColor = Color.fromARGB(255, 50, 157, 156);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      initialRoute: '/auth',
      routes: {
        '/auth': (context) => Auth(),
        '/home': (context) => GreetingPage(),
      },
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
              body2: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w400,
                  fontSize: 16.0,
                  color: Colors.grey),
              headline: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Montserrat',
                  color: primaryColor),
              title: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic)),
          buttonTheme: ButtonThemeData(
            buttonColor: primaryColor,
            textTheme: ButtonTextTheme.accent,
            colorScheme:
                Theme.of(context).colorScheme.copyWith(secondary: Colors.white),
          ),
          primaryColor: primaryColor
          // primarySwatch: primaryColor,
          ),
      // home: SplashScreen(),
      // home: Auth(),
    );
  }
}
