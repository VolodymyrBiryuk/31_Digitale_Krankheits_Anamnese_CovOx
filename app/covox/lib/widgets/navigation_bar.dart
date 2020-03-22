import 'package:flutter/material.dart';
import 'package:covox/widgets/navigation_flat_button_widget.dart';

class NavigationBarWidget extends AppBar {
  NavigationBarWidget({Key key, Widget title})
      : super(
            key: key,
            title: title,
            backgroundColor: Colors.transparent,
            bottomOpacity: 0.0,
            elevation: 0.0,
            leading: new NavigationFlatButtonWidget(
              fbKey: GlobalKey(),
              text: 'zurück',
            ),
            actions: <Widget>[
              new NavigationFlatButtonWidget(
                  fbKey: GlobalKey(), text: 'abbrechen')
            ]);
}
/* import 'package:flutter/material.dart';

class NavigationBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  NavigationBarWidget({
    Key key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: FlatButton(onPressed: null, child: Text('<- zurück')),
      title: Text(''),
      actions: <Widget>[FlatButton(onPressed: null, child: Text('abbrechen'))],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(60.0);
} */
