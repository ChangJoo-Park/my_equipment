import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_equipments/styles.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: <Widget>[
          CupertinoSliverNavigationBar(
            backgroundColor: Styles.scaffoldBackground,
            automaticallyImplyTitle: true,
            automaticallyImplyLeading: true,
            largeTitle: Text('Setting'),
          ),
        ],
      ),
    );
  }
}
