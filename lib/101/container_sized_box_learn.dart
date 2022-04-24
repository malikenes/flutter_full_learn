import 'package:flutter/material.dart';

class ContainerSizedBoxLearnView extends StatelessWidget {
  const ContainerSizedBoxLearnView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            width: 200,
            height: 300,
            child: Text("aa" * 500),
          ),
          const SizedBox.shrink(),
          SizedBox.square(
            dimension: 60,
            child: Text("b" * 100),
          ),
          Container(
            height: 50,
            constraints: const BoxConstraints(
              maxWidth: 100,
            ),
            child: Text("a" * 100),
            padding: const EdgeInsets.all(10),
            decoration: ProjectUtility.projectDecoration,
          )
        ],
      ),
    );
  }
}

class ProjectUtility {
  static BoxDecoration projectDecoration = BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      gradient: const LinearGradient(colors: [Colors.red, Colors.black]),
      boxShadow: [BoxShadow(color: Colors.green)],
      border: Border.all());
}
