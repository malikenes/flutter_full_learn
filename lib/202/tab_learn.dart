import 'package:flutter/material.dart';
import 'package:flutter_full_learn/101/appbar_learn.dart';
import 'package:flutter_full_learn/101/button_learn.dart';
import 'package:flutter_full_learn/101/card_learn.dart';
import 'package:flutter_full_learn/101/image_learn.dart';

class TabLearn extends StatefulWidget {
  const TabLearn({Key? key}) : super(key: key);

  @override
  State<TabLearn> createState() => _TabLearnState();
}

class _TabLearnState extends State<TabLearn>
    with TickerProviderStateMixin {
  late final TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller =
        TabController(length: _MyTabView.values.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final double notchMargin = 10.0;
    return DefaultTabController(
      length: _MyTabView.values.length,
      child: Scaffold(
        extendBody: true,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _controller.animateTo(_MyTabView.Home.index);
          },
        ),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          notchMargin: notchMargin,
          shape: CircularNotchedRectangle(),
          child: _myTabbar(),
        ),
        // appBar: AppBar(
        //   bottom: TabBar(controller: _controller, tabs: [
        //     Text("Tab1"),
        //     Text("Tab2"),
        //   ]),
        // ),
        body: _myTabbarView(),
      ),
    );
  }

  TabBar _myTabbar() {
    return TabBar(
        unselectedLabelColor: Colors.grey,
        labelColor: Colors.amber,
        indicatorColor: Colors.red,
        controller: _controller,
        tabs: _MyTabView.values
            .map((e) => Tab(text: "${e.name}"))
            .toList());
  }

  TabBarView _myTabbarView() {
    return TabBarView(
      physics: NeverScrollableScrollPhysics(),
      controller: _controller,
      children: [
        AppbarLearnView(),
        ButtonLearnView(),
        CardLearnView(),
        ImageLeranView()
      ],
    );
  }
}

enum _MyTabView { Home, Settings, Profile, Favorite }
