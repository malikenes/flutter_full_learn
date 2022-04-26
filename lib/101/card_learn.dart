import 'package:flutter/material.dart';

class CardLearnView extends StatelessWidget {
  const CardLearnView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CardLearn "),
      ),
      body: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const _custonCard(
              child: SizedBox(
                child: Center(child: Text("Enes")),
                width: 200,
                height: 100,
              ),
            ),
          ]),
    );
  }
}

class _custonCard extends StatelessWidget {
  const _custonCard({
    Key? key,
    required this.child,
  }) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: ProjectMargin.cardMargin,
      color: Theme.of(context).colorScheme.error,
      shape: StadiumBorder(),
      child: child,
    );
  }
}

class ProjectMargin {
  static const cardMargin = EdgeInsets.all(8);
}
