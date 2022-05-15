import 'package:flutter/material.dart';

import '../demos/password_textfield_demos.dart';

class WidgetSizeEnumLearn extends StatefulWidget {
  const WidgetSizeEnumLearn({Key? key}) : super(key: key);

  @override
  State<WidgetSizeEnumLearn> createState() => _WidgetSizeEnumLearnState();
}

class _WidgetSizeEnumLearnState extends State<WidgetSizeEnumLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Card(
              child: Container(
            color: Colors.amber,
            height: WidgetSize.normalCardHight.value(),
          )),
          PasswordTextField(),
        ],
      ),
    );
  }
}

enum WidgetSize { normalCardHight, circleProfileWidth }

extension WidgetSizeExtension on WidgetSize {
  double value() {
    switch (this) {
      case WidgetSize.normalCardHight:
        // TODO: Handle this case.
        return 30;
      case WidgetSize.circleProfileWidth:
        // TODO: Handle this case.
        return 25;
    }
  }
}
