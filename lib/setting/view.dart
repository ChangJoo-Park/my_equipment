import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_equipments/styles.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Styles.scaffoldBackground,
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              backgroundColor: Styles.appBarBackground,
              title: Text('Settings', style: TextStyle(color: Colors.black)),
              centerTitle: false,
              actions: [],
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                ListTile(
                  title: Text('AAAA'),
                  onTap: () {},
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
