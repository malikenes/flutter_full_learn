import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/oop_learn.dart';

class OopLearnView extends StatefulWidget {
  const OopLearnView({Key? key}) : super(key: key);

  @override
  State<OopLearnView> createState() => _OopLearnViewState();
}

class _OopLearnViewState extends State<OopLearnView> {
  FileDownload? download;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    download = FileDownload();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          CircularProgressIndicator(
            color: Colors.amber,
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          download?.downloadItems(null);
        },
      ),
    );
  }
}
