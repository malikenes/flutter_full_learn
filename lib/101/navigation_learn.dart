import 'package:flutter/material.dart';
import 'package:flutter_full_learn/101/listview_builder_learn.dart';

class NavigationLearn extends StatefulWidget {
  const NavigationLearn({Key? key}) : super(key: key);

  @override
  State<NavigationLearn> createState() => _NavigationLearnState();
}

class _NavigationLearnState extends State<NavigationLearn> with NavigatorManeger {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.navigate_next_outlined),
        onPressed: () {
          navigateToWidget(context, ListviewBuilderLearn());
        },
      ),
    );
  }
}

mixin NavigatorManeger {
  void navigateToWidget(BuildContext context, Widget widget) {
    Navigator.of(context).push(
      MaterialPageRoute(
          builder: (context) {
            return widget;
          },
          fullscreenDialog: true,
          settings: RouteSettings()),
    );
  }
}
