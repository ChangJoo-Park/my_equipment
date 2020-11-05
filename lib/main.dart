import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_equipments/feed/view.dart';
import 'package:my_equipments/home/view.dart';
import 'package:my_equipments/setting/view.dart';
import 'package:my_equipments/styles.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: Colors.black, // Color for Android
      statusBarBrightness:
          Brightness.light // Dark == white status bar -- for IOS.
      ));
  runApp(
    const ProviderScope(child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<BottomNavigationBarItem> items = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: '홈',
      backgroundColor: Styles.tabBackgroundColor,
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.view_day),
      label: '피드',
      backgroundColor: Styles.tabBackgroundColor,
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.star),
      label: '즐겨찾기',
      backgroundColor: Styles.tabBackgroundColor,
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.view_comfy),
      label: '설정',
      backgroundColor: Styles.tabBackgroundColor,
    ),
  ];

  List<Widget> pages = [
    HomePage(),
    FeedPage(),
    HomePage(),
    SettingPage(),
  ];

  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        backgroundColor: Colors.black,
        fixedColor: Colors.white,
        elevation: 0,
        items: items,
        currentIndex: _currentIndex,
        onTap: (int next) {
          setState(() => _currentIndex = next);
        },
      ),
    );
  }
}
