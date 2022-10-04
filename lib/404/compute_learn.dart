import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ComputeLearn extends StatefulWidget {
  const ComputeLearn({Key? key}) : super(key: key);
  @override
  State<ComputeLearn> createState() => _ComputeLearnState();
}

class _ComputeLearnState extends State<ComputeLearn> {
  int _result = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_result.toString()),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          // int result = 0;
          // for (int i = 0; i < 10000000; i++) {
          //   result = i * i;
          // }
          final result = await compute(Calculator.sum, 1000000);
          setState(() {
            _result = result;
          });
        },
      ),
      body: const CircularProgressIndicator(),
    );
  }
}

class Calculator {
  static int sum(int limit) {
    int result = 0;
    for (int i = 0; i < limit; i++) {
      result = i * i;
    }
    return result;
  }
}
