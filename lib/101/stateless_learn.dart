import 'package:flutter/material.dart';

class StatelessLearnView extends StatelessWidget {
  const StatelessLearnView({Key? key}) : super(key: key);
  final String title = "Enes";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateless"),
      ),
      body: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          _TextTittle(text: title),
        ],
      ),
    );
  }
}

class _TextTittle extends StatelessWidget {
  // altçizgi private yapar sadece bu dosyadan erişilebilir .
  const _TextTittle({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headline1,
    );
  }
}
