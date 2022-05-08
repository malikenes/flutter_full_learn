import 'package:flutter/material.dart';

class ListviewBuilderLearn extends StatefulWidget {
  const ListviewBuilderLearn({Key? key}) : super(key: key);

  @override
  State<ListviewBuilderLearn> createState() => _ListviewBuilderLearnState();
}

class _ListviewBuilderLearnState extends State<ListviewBuilderLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return SizedBox(
            height: 200,
            child: Column(
              children: [
                Expanded(child: Image.network("https://picsum.photos/200")),
                Text("$index "),
              ],
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return Divider(color: Colors.white);
        },
        itemCount: 15,
      ),
    );
  }
}
