import 'package:flutter/material.dart';

import 'state_learn_view_model.dart';

class StateManageLearn extends StatefulWidget {
  const StateManageLearn({Key? key}) : super(key: key);

  @override
  State<StateManageLearn> createState() => _StateManageLearnState();
}

class _StateManageLearnState extends StateLearnViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          changeOpacity();
          changeVisible();
        },
      ),
      appBar: AppBar(
        backgroundColor: isOpacity ? Colors.red : Colors.amber,
        title: isVisible ? Text("visible") : Text("invisible"),
      ),
    );
  }
}
