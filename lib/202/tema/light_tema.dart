import 'package:flutter/material.dart';

class LightTheme {
  final _lightColor = _LightColor();

  late ThemeData thme;
  LightTheme() {
    thme = ThemeData(
        floatingActionButtonTheme:
            FloatingActionButtonThemeData(backgroundColor: Colors.green),
        colorScheme: ColorScheme.light(),
        buttonTheme: ButtonThemeData(
            colorScheme:
                ColorScheme.light(onPrimary: _lightColor._blueMania)),
        textTheme: ThemeData.light().textTheme.copyWith(
            subtitle1:
                TextStyle(fontSize: 50, color: _lightColor._textColor)));
  }
}

class _LightColor {
  final Color _textColor = Colors.black26;
  final Color _blueMania = Colors.lightBlue;
}
