import 'package:flutter/material.dart';

class ImageTextWidget extends StatelessWidget {
  final GlobalKey fbKey;
  final String imagePath;
  final String text;

  ImageTextWidget({
    Key key,
    @required this.fbKey,
    this.imagePath,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: generateIcons(['foo'], context));
  }

  /// Generate the icons for the progress bar according to the progress item strings.
  List<TextSpan> formatText(String text, BuildContext context) {
    List<TextSpan> formattedLines = <TextSpan>[];
    List<String> lines = text.split('\n');
    for (var line in lines) {
      formattedLines.add(TextSpan(
        text: line,
        style: TextStyle(color: Theme.of(context).primaryColor),
      ));
    }
    return formattedLines;
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
