import 'package:covox/blocs/terms_of_service/index.dart';
import 'package:covox/screens/question_gender.dart';
import 'package:covox/screens/terms_of_service/widgets/terms_of_service_layout/terms_of_service_layout.dart';
import 'package:covox/screens/terms_of_service/widgets/terms_of_service_text/terms_of_service_text.dart';
import 'package:covox/util/enter_exit_route.dart';
import 'package:flutter/material.dart';
import 'package:covox/widgets/title_content_button_widget.dart';
import 'package:covox/widgets/navigation_bar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// The Greeting Page, where the user is informaed about the purpose of the App.
class TermsOfService extends StatefulWidget {
  @override
  _TermsOfServiceState createState() => _TermsOfServiceState();
}

class _TermsOfServiceState extends State<TermsOfService> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: NavigationBarWidget(),
        appBar: NavigationBarWidget(
          context: context,
          onPressedLeading: signOut,
          labelLeading: 'sign out',
        ),
        body: BlocProvider(
            create: (context) {
              return TermsOfServiceBloc(
                  termsOfServiceRepository: TermsOfServiceRepository());
            },
            child: TermsOfServiceLayout()));
  }
}

void signOut() {
  print('Sign out');
}
