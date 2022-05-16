import 'package:flutter/material.dart';

import 'state_management_learn.dart';

abstract class StateLearnViewModel extends State<StateManageLearn> {
  bool isVisible = false;
  bool isOpacity = false;
  late AnimationController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  void changeVisible() {
    setState(() {
      isVisible = !isVisible;
    });
  }

  void changeOpacity() {
    setState(() {
      isOpacity = !isOpacity;
    });
  }
}
