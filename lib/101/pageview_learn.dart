import 'package:flutter/material.dart';
import 'package:flutter_full_learn/101/list_tile_learn.dart';
import 'package:flutter_full_learn/101/padding_learn.dart';
import 'package:flutter_full_learn/101/stack_learn.dart';

class PageViewLearn extends StatefulWidget {
  const PageViewLearn({Key? key}) : super(key: key);

  @override
  State<PageViewLearn> createState() => _PageViewLearnState();
}

class _PageViewLearnState extends State<PageViewLearn> {
  final _pageViewController = PageController(viewportFraction: 0.7);
  int _pageIndex = 0;
  void _updatepageIndex(int index) {
    setState(() {
      _pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(_pageIndex.toString()),
          FloatingActionButton(
            onPressed: () {
              _pageViewController.previousPage(
                  duration: Duration(seconds: 2), curve: Curves.linear);
            },
            child: Icon(Icons.chevron_left),
          ),
          FloatingActionButton(
            onPressed: () {
              _pageViewController.nextPage(duration: Duration(seconds: 2), curve: Curves.linear);
            },
            child: const Icon(Icons.chevron_right),
          ),
        ],
      ),
      body: PageView(
        controller: _pageViewController,
        onPageChanged: _updatepageIndex,
        children: [StackLearn(), ListTileLearn(), PaddingLeranView()],
      ),
    );
  }
}
