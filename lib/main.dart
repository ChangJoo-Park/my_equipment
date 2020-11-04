import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_equipments/home/view.dart';
import 'package:my_equipments/providers.dart' as p;
import 'package:my_equipments/search/view.dart';
import 'package:my_equipments/setting/view.dart';
import 'package:my_equipments/styles.dart';
import 'package:my_equipments/widgets/search_bar.dart';

// A Counter example implemented with riverpod

void main() {
  runApp(
    const ProviderScope(child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const List<BottomNavigationBarItem> items = [
      BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.home),
      ),
      BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.search),
      ),
      BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.settings),
      )
    ];

    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(items: items),
        tabBuilder: (context, index) {
          switch (index) {
            case 0:
              return CupertinoTabView(
                builder: (context) {
                  return HomePage(key: ValueKey('HomePage'));
                },
              );
            case 1:
              return CupertinoTabView(
                builder: (context) {
                  return SearchPage(key: ValueKey('SearchPage'));
                },
              );
            case 2:
              return CupertinoTabView(
                builder: (context) {
                  return SettingPage(key: ValueKey('SettingPage'));
                },
              );
            default:
              return CupertinoPageScaffold(
                key: ValueKey('ErrorPage'),
                child: Container(),
              );
          }
        });
  }
}
