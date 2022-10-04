import 'package:flutter/material.dart';

class AppbarLearnView extends StatelessWidget {
  const AppbarLearnView({Key? key}) : super(key: key);
  final String _title = "Welcome";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        leading: const Icon(Icons.chevron_left),
        /* centerTitle: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        actionsIconTheme: IconThemeData(color: Colors.red),
        automaticallyImplyLeading: false, */
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.mail_outline_outlined)),
          const Center(child: CircularProgressIndicator())
        ],
      ),
    );
  }
}
