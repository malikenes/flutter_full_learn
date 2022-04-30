import 'package:flutter/material.dart';

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        ListTile(
          onTap: () {},
          title: Text("My card"),
          subtitle: Text("What are you?"),
          leading: Icon(Icons.person),
          trailing: Icon(Icons.chevron_right_rounded),
        ),
      ]),
    );
  }
}
