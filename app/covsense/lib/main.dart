import 'package:covox/blocs/auth/index.dart';
import 'package:covox/blocs/auth/user_repository.dart';
import 'package:covox/screens/auth/index.dart';
import 'package:covox/screens/home/homepage.dart';
import 'package:covox/screens/splash_screen/index.dart';
import 'package:covox/screens/terms_of_service/terms_of_service.dart';
import 'package:covox/widgets/loading_indicator/index.dart';
import 'package:flutter/material.dart';
import 'dart:developer' as developer;
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleBlocDelegate extends BlocDelegate {
  @override
  void onEvent(Bloc bloc, Object event) {
    print(event);
    super.onEvent(bloc, event);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    print(transition);
    super.onTransition(bloc, transition);
  }

  @override
  void onError(Bloc bloc, Object error, StackTrace stackTrace) {
    print(error);
    super.onError(bloc, error, stackTrace);
  }
}

void main() {
  BlocSupervisor.delegate = SimpleBlocDelegate();
  final userRepository = UserRepository();
  runApp(
    BlocProvider<AuthBloc>(
      create: (context) {
        return AuthBloc(userRepository: userRepository)..add(AppStarted());
      },
      child: App(userRepository: userRepository),
    ),
  );
}

class App extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';
  static const Color primaryColor = Color.fromARGB(255, 50, 157, 156);
  final UserRepository userRepository;

  App({Key key, @required this.userRepository}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      // initialRoute: '/auth',
      routes: {
        '/home': (context) => HomePage(),
      },
      theme: ThemeData(
          appBarTheme: AppBarTheme(
            color: Colors.white,
          ),
          brightness: Brightness.light,
          accentColor: Colors.white,
          fontFamily: 'Montserrat',
          textTheme: TextTheme(
              bodyText1: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w500,
                  fontSize: 16.0,
                  color: primaryColor),
              bodyText2: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w400,
                  fontSize: 16.0,
                  color: Colors.grey),
              headline5: TextStyle(
                  fontSize: 29,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Montserrat',
                  color: primaryColor),
              headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic)),
          buttonTheme: ButtonThemeData(
            buttonColor: primaryColor,
            textTheme: ButtonTextTheme.accent,
            colorScheme:
                Theme.of(context).colorScheme.copyWith(secondary: Colors.white),
          ),
          primaryColor: primaryColor
          // primarySwatch: primaryColor,
          ),
      home: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          Widget screen = SplashScreen();
          if (state is AuthUninitialized) {
            screen = SplashScreen();
          } else if (state is AuthUnauthenticated) {
            screen = Auth(userRepository: userRepository);
          } else if (state is AuthAuthenticated) {
            screen = HomePage();
          } else if (state is AuthLoading) {
            screen = LoadingIndicator();
          }
          return screen;
          // return TermsOfService();
        },
      ),
    );
  }
}
