import 'package:flutter/material.dart';

class ListviewLearn extends StatefulWidget {
  const ListviewLearn({Key? key}) : super(key: key);

  @override
  State<ListviewLearn> createState() => _ListviewLearnState();
}

class _ListviewLearnState extends State<ListviewLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(scrollDirection: Axis.vertical, shrinkWrap: true, children: [
        Container(
          height: 250,
          color: Colors.amber,
        ),
        Divider(),
        Container(
          height: 250,
          color: Colors.amber,
        ),
        Placeholder(),
        Container(
          height: 250,
          color: Colors.amber,
        )
      ]),
    );
  }
}
