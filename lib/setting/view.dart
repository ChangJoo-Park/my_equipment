import 'package:cupertino_list_tile/cupertino_list_tile.dart';
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
          SliverList(
            delegate: SliverChildListDelegate([
              CupertinoListTile(
                leading: FlutterLogo(),
                title: Text('HELLO WORLD'),
                onTap: () {},
              )
            ]),
          ),
        ],
      ),
    );
  }
}
