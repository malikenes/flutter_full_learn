import 'package:flutter/material.dart';

class ScaffoldLearn extends StatelessWidget {
  const ScaffoldLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Enes"),
      ),
      backgroundColor: Colors.red,
      body: Text("Hi"),
      // ignore: prefer_const_literals_to_create_immutables
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.abc_sharp), label: "enes"),
        BottomNavigationBarItem(icon: Icon(Icons.abc_sharp), label: "nj"),
      ]),
      drawer: Drawer(),
    );
  }
}
