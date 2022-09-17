import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/cache/shared_manger.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedLearn extends StatefulWidget {
  const SharedLearn({Key? key}) : super(key: key);

  @override
  State<SharedLearn> createState() => _SharedLearnState();
}

class _SharedLearnState extends LoadingStateFull<SharedLearn> {
  int _currentValue = 0;
  late final SharedManager _manager;
  void _onChangeValue(String value) {
    final _value = int.tryParse(value);
    if (_value != null) {
      setState(() {
        _currentValue = _value;
      });
    }
  }

  @override
  initState() {
    super.initState();
    _manager = SharedManager();
    _initilize();
  }

  Future<void> _initilize() async {
    await _manager.init();
    getValues();
  }

  void getValues() {
    final String? counter = _manager.getString(SharedKeys.counter);
    _onChangeValue(counter.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          isLoading
              ? Center(
                  child: CircularProgressIndicator(
                    color: Theme.of(context).backgroundColor,
                  ),
                )
              : SizedBox()
        ],
        title: Text(_currentValue.toString()),
      ),
      floatingActionButton: Row(
          mainAxisSize: MainAxisSize.min,
          children: [_cacheButton(), _removeButton()]),
      body: TextField(
        onChanged: (value) {
          _onChangeValue(value);
        },
      ),
    );
  }

  _cacheButton() {
    return FloatingActionButton(
      child: Icon(Icons.save),
      onPressed: () async {
        _changeLoading();

        await _manager.saveString(
            SharedKeys.counter, _currentValue.toString());
        _changeLoading();
      },
    );
  }

  _removeButton() {
    return FloatingActionButton(
      child: Icon(Icons.remove),
      onPressed: () async {
        _changeLoading();
        await _manager.removeItem(
          SharedKeys.counter,
        );
        _changeLoading();
      },
    );
  }
}

abstract class LoadingStateFull<T extends StatefulWidget>
    extends State<T> {
  bool isLoading = false;

  void _changeLoading() {
    setState(() {
      isLoading = !isLoading;
    });
  }
}
