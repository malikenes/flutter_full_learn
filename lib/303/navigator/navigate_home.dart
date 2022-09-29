import 'package:flutter/material.dart';
import 'package:flutter_full_learn/product/navigate/navigate_router.dart';
import 'package:flutter_full_learn/product/navigate/navigator_manager.dart';

class NavigateHome extends StatefulWidget {
  const NavigateHome({Key? key}) : super(key: key);

  @override
  State<NavigateHome> createState() => _NavigateHomeState();
}

class _NavigateHomeState extends State<NavigateHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await NavigatorManager.instance
              .pushToPage(NavigateRoutes.detail, arguments: "emk");
          // Navigator.of(context).pushNamed(
          //     NavigateRoutes.detail.withParaf,
          //     arguments: "asddsa");
        },
      ),
      appBar: AppBar(
        title: Text(toString()),
      ),
    );
  }
}
