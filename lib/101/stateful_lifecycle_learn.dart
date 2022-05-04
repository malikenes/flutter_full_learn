import 'package:flutter/material.dart';

class StatefulLifecycleLearn extends StatefulWidget {
  const StatefulLifecycleLearn({Key? key, required this.message}) : super(key: key);
  final String message;

  @override
  State<StatefulLifecycleLearn> createState() => _StatefulLifecycleLearnState();
}

class _StatefulLifecycleLearnState extends State<StatefulLifecycleLearn> {
  String _message = "";
  late final bool _isOdd;

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  } //Büyük bir değişiklik olunca çağrılıyor initstateden sonra çağrılıyor.

  @override
  void didUpdateWidget(covariant StatefulLifecycleLearn oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.message != widget.message) {
      _message = widget.message;
      _computeName();
      setState(() {});
    }
  } //üst classdan gelen değişiklikler olursa çağrılıyor.

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  } //sayfayı öldürürken çağrılır

  @override
  void initState() {
    super.initState();
    _message = widget.message;
    _isOdd = widget.message.length.isOdd;
    _computeName();
  }

  void _computeName() {
    _isOdd ? _message += "Tek" : _message += "Çitf";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(_message),
        ),
        body: _isOdd
            ? TextButton(onPressed: () {}, child: Text(widget.message))
            : ElevatedButton(onPressed: () {}, child: Text(widget.message)));
  }
}
