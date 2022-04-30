import 'package:flutter/material.dart';

class StackLearnDemos extends StatelessWidget {
  const StackLearnDemos({Key? key}) : super(key: key);
  final _cardHeight = 50.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
              flex: 4,
              child: Container(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned.fill(
                      bottom: _cardHeight / 2,
                      child: Container(
                        color: Colors.amber,
                      ),
                    ),
                    Positioned(
                        bottom: 0,
                        height: _cardHeight,
                        width: 300,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16))),
                          color: Colors.grey,
                        ))
                  ],
                ),
              )),
          Spacer(flex: 6)
        ],
      ),
    );
  }
}
