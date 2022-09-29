import 'package:flutter/material.dart';

class NavigateHomeDetail extends StatefulWidget {
  const NavigateHomeDetail({Key? key, this.id}) : super(key: key);
  final String? id;

  @override
  State<NavigateHomeDetail> createState() => _NavigateHomeState();
}

class _NavigateHomeState extends State<NavigateHomeDetail> {
  String? _id;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.microtask(() {
      final _modalId = ModalRoute.of(context)?.settings.arguments;

      setState(() {
        _modalId is String ? _id = _modalId : _id = widget.id;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_id ?? ''),
      ),
    );
  }
}
