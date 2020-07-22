import 'package:covox/blocs/terms_of_service/index.dart';
import 'package:covox/screens/terms_of_service/widgets/terms_of_service_text/terms_of_service_text.dart';
import 'package:covox/widgets/covsense_raised_button/index.dart';
import 'package:covox/widgets/title_content_control/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TermsOfServiceLayout extends StatefulWidget {
  TermsOfServiceLayout({Key key}) : super(key: key);

  @override
  _TermsOfServiceLayoutState createState() => _TermsOfServiceLayoutState();
}

class _TermsOfServiceLayoutState extends State<TermsOfServiceLayout> {
  @override
  Widget build(BuildContext context) {
    _onAcceptTermsOfServiceButtonPressed() {
      BlocProvider.of<TermsOfServiceBloc>(context)
          .add(AcceptedTermsOfService());
      // Navigator.of(context).pushNamed('/home');
    }

    return BlocListener<TermsOfServiceBloc, TermsOfServiceState>(
      listener: (context, state) {
        if (state is TermsOfServiceAccepted) {}
      },
      child: BlocBuilder<TermsOfServiceBloc, TermsOfServiceState>(
        builder: (context, state) {
          if (state is TermsOfServiceAccepted) {
            Navigator.pushNamed(context, '/home');
            return Container();
          } else {
            return Container(
              child: TitleContentControl(
                  fbKey: GlobalKey(),
                  title: 'Vorab',
                  content: TermsOfServiceText(),
                  contentPadding: 40,
                  control: Container(
                    child: CovsenseRaisedButton(
                      fbKey: GlobalKey(),
                      text: 'LOS GEHT\'S',
                      onPressed: _onAcceptTermsOfServiceButtonPressed,
                    ),
                  )),
            );
          }
        },
      ),
    );
  }
}
