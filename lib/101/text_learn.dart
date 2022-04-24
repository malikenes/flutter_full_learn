import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  final String name = "Enes";
  final String? bosName;
  final ProjectKeys keys = ProjectKeys();

  TextLearnView({Key? key, this.bosName}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              ('Best one $name ${name.length} ' * 10),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.right,
              // ignore: prefer_const_constructors
              style: TextStyle(
                wordSpacing: 2,
                letterSpacing: 2,
                decoration: TextDecoration.underline,
                fontStyle: FontStyle.italic,
                color: Colors.lime,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Text(
            "Doğru kullanımı bu olmalı",
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(color: ProjectColors.welcomeColor),
          ),
          Text(bosName ?? ""),
          Text(keys.welcome)
        ],
      ),
    );
  }
}

class ProjectColors {
  static Color welcomeColor = Colors.red;
}

class ProjectKeys {
  final String welcome = "Merhaba";
}
