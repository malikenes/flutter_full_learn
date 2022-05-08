import 'package:flutter/material.dart';

import 'colors_demos_view.dart';

class ColorsLifeCycle extends StatefulWidget {
  const ColorsLifeCycle({Key? key}) : super(key: key);

  @override
  State<ColorsLifeCycle> createState() => _ColorsLifeCycleState();
}

class _ColorsLifeCycleState extends State<ColorsLifeCycle> {
  Color? _backColor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: _onPres,
            icon: Icon(Icons.clear),
          ),
        ],
      ),
      body: Column(
        children: [const Spacer(), Expanded(child: ColorsDemos(initialColor: _backColor))],
      ),
    );
  }

  void _onPres() {
    setState(() {
      _backColor = Colors.pink;
    });
  }
}
