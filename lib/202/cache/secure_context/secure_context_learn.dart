import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class ShareContextLearn extends StatefulWidget {
  const ShareContextLearn({Key? key}) : super(key: key);

  @override
  State<ShareContextLearn> createState() => _ShareContextLearnState();
}

enum SecureKeys { token }

class _ShareContextLearnState extends State<ShareContextLearn> {
  final storage = const FlutterSecureStorage();
  String _title = '';
  void saveItems(String data) {
    setState(() {
      _title = data;
    });
  }

  @override
  void initState() {
    super.initState();
    getSecure();
  }

  void getSecure() async {
    _title = await storage.read(key: SecureKeys.token.name) ?? '';
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () async {
            await storage.write(
                key: SecureKeys.token.name, value: _title);
          },
          label: Text('Save')),
      body: TextFormField(onChanged: saveItems),
    );
  }
}
