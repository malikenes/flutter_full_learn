import 'package:flutter/material.dart';
import 'package:flutter_full_learn/product/counter_hello_button.dart';
import 'package:flutter_full_learn/product/language/language_items.dart';

class StateFulLearn extends StatefulWidget {
  const StateFulLearn({Key? key}) : super(key: key);

  @override
  State<StateFulLearn> createState() => _StateFulLearnState();
}

class _StateFulLearnState extends State<StateFulLearn> {
  int _countValue = 0;

  void _updateValue(bool isInc) {
    if (isInc) {
      _countValue = _countValue + 1;
    } else {
      _countValue = _countValue - 1;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LanguageItems.welcomeTitle),
      ),
      body: Column(
        children: [
          Center(
              child: Text(
            _countValue.toString(),
            style: Theme.of(context).textTheme.headline3,
          )),
          Placeholder(),
          CounterHelloButton(),
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          _incButton(),
          _decsButton(),
        ],
      ),
    );
  }

  FloatingActionButton _incButton() {
    return FloatingActionButton(
      onPressed: () {
        _updateValue(true);
      },
      child: Icon(Icons.add),
    );
  }

  Padding _decsButton() {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: FloatingActionButton(
        onPressed: () {
          _updateValue(false);
        },
        child: Icon(Icons.remove),
      ),
    );
  }
}
