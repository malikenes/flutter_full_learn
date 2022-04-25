import 'package:flutter/material.dart';

class IconLearnView extends StatelessWidget {
  IconLearnView({Key? key}) : super(key: key);
  IconSize iconSize = IconSize();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("IconLearn"),
      ),
      body: Column(
        children: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.message_outlined,
                size: iconSize.iconSmall,
                color: Theme.of(context).backgroundColor,
              ))
        ],
      ),
    );
  }
}

class IconSize {
  final double iconSmall = 40;
}
