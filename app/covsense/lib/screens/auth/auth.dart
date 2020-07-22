import 'package:covox/blocs/auth/index.dart';
import 'package:covox/blocs/auth/sign_in/sign_in_bloc.dart';
import 'package:covox/blocs/auth/user_repository.dart';
import 'package:covox/screens/auth/widgets/sign_in/index.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';


class Auth extends StatelessWidget {
  final UserRepository userRepository;

  Auth({Key key, @required this.userRepository})
      : assert(userRepository != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: BlocProvider(
        create: (context) {
          return SignInBloc(
            authBloc: BlocProvider.of<AuthBloc>(context),
            userRepository: userRepository,
          );
        },
        child: SignInForm(),
      ),
    );
  }
}