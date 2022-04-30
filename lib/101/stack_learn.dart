import 'package:flutter/material.dart';

class StackLearn extends StatelessWidget {
  const StackLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          Container(color: Colors.red, height: 200),
          Container(
            color: Colors.amber,
            height: 50,
          ),
          Positioned(
            right: 100,
            width: 50,
            height: 100,
            child: Container(
              color: Colors.green,
            ),
          ),
          Positioned.fill(
              bottom: 0,
              top: 100,
              child: Container(
                color: Colors.grey,
              ))
        ],
      ),
    );
  }
}
