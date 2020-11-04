import 'package:flutter/cupertino.dart';
import 'package:my_equipments/styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: [
          CupertinoSliverNavigationBar(
            backgroundColor: Styles.scaffoldBackground,
            automaticallyImplyTitle: true,
            automaticallyImplyLeading: true,
            largeTitle: Text('Home'),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                height: 300,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(width: 100, height: 100, child: Text('hello')),
                    Container(width: 100, height: 100, child: Text('hello')),
                    Container(width: 100, height: 100, child: Text('hello')),
                    Container(width: 100, height: 100, child: Text('hello')),
                    Container(width: 100, height: 100, child: Text('hello')),
                    Container(width: 100, height: 100, child: Text('hello')),
                    Container(width: 100, height: 100, child: Text('hello')),
                    Container(width: 100, height: 100, child: Text('hello')),
                  ],
                ),
              )
            ]),
          ),
        ],
      ),
    );
  }
}
