import 'package:flutter/material.dart';

class ColorsDemos extends StatefulWidget {
  const ColorsDemos({Key? key, required this.initialColor}) : super(key: key);
  final Color? initialColor;
  @override
  State<ColorsDemos> createState() => _ColorsDemosState();
}

class _ColorsDemosState extends State<ColorsDemos> {
  Color? _backgroundColor = Colors.transparent;
  void changeBackgroundColor(Color color) {
    setState(() {
      _backgroundColor = color;
    });
  }

  @override
  void initState() {
    super.initState();
    _backgroundColor = widget.initialColor ?? Colors.transparent;
  }

  @override
  void didUpdateWidget(covariant ColorsDemos oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.initialColor != _backgroundColor && widget.initialColor != null) {
      changeBackgroundColor(widget.initialColor!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      // ignore: prefer_const_literals_to_create_immutables
      bottomNavigationBar: BottomNavigationBar(onTap: _changeColorOnTap, items: [
        const BottomNavigationBarItem(icon: _colorsContainer(color: Colors.red), label: "Red"),
        const BottomNavigationBarItem(
            icon: _colorsContainer(color: Colors.yellow), label: "Yellow"),
        const BottomNavigationBarItem(icon: _colorsContainer(color: Colors.blue), label: "Blue"),
      ]),
    );
  }

  void _changeColorOnTap(int value) {
    if (value == _MyColors.red.index) {
      changeBackgroundColor(Colors.red);
    } else if (value == _MyColors.yellow.index) {
      changeBackgroundColor(Colors.yellow);
    } else if (value == _MyColors.blue.index) {
      changeBackgroundColor(Colors.blue);
    }
  }
}

enum _MyColors { red, yellow, blue }

class _colorsContainer extends StatelessWidget {
  const _colorsContainer({
    Key? key,
    required this.color,
  }) : super(key: key);
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(height: 20, width: 20, color: color);
  }
}
