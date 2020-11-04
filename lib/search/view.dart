import 'package:flutter/cupertino.dart';
import 'package:my_equipments/styles.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: [
          CupertinoSliverNavigationBar(
            backgroundColor: Styles.scaffoldBackground,
            automaticallyImplyTitle: true,
            automaticallyImplyLeading: true,
            largeTitle: Text('Search'),
          ),
        ],
      ),
    );
  }
}
