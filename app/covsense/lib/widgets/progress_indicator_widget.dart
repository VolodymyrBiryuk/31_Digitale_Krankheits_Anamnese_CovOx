// TODO: Finish implementation
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class ProgressIndicatorWidget extends StatelessWidget {
  final GlobalKey fbKey;
  final List<String> progress;

  ProgressIndicatorWidget({
    Key key,
    @required this.fbKey,
    this.progress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: generateIcons(progress, context));
  }

  /// Generate the icons for the progress bar according to the progress item strings.
  List<Widget> generateIcons(List<String> progressItems, BuildContext context) {
    List<Widget> icons = <Widget>[];
    for (var progressItem in progressItems) {
      icons.add(generateIcon(progressItem, context));
      icons.add(SizedBox(height: 16));
    }
    return icons;
  }

  /// Generate the appropriate icon according to the progress item string passed.
  Icon generateIcon(String progressItem, BuildContext context) {
    Icon icon;
    switch (progressItem) {
      case 'done':
        icon = Icon(
          Icons.check_circle,
          size: 30,
          color: Theme.of(context).primaryColor,
        );
        break;
      case 'doing':
        icon = Icon(
          Icons.check_circle,
          size: 30,
          color: Theme.of(context).primaryColorLight,
        );
        break;
      default:
        icon = Icon(
          Icons.radio_button_unchecked,
          size: 30,
          color: Theme.of(context).primaryColor,
        );
    }
    return icon;
  }
}
