import 'package:flutter/material.dart';

class ButtonLearnView extends StatelessWidget {
  const ButtonLearnView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(
            onPressed: () {},
            child: Text("Text"),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith(
                (states) {
                  if (states.contains(MaterialState.pressed)) {
                    return Colors.black;
                  }
                  return Colors.red;
                },
              ),
            ),
          ),
          ElevatedButton(onPressed: null, child: Text("Elevated")),
          IconButton(onPressed: () {}, icon: Icon(Icons.abc_outlined)),
          FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.abc_rounded),
          ),
          OutlinedButton(
            onPressed: () {},
            child: Text("Outlined"),
            style: OutlinedButton.styleFrom(backgroundColor: Colors.blue),
          ),
          InkWell(
            onTap: () {},
            child: Text("Inkwell"),
          ),
          Container(
            height: 100,
            color: Colors.black,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              "Press Big",
              style: Theme.of(context).textTheme.headline5,
            ),
            style: ElevatedButton.styleFrom(
                primary: Colors.green,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
          ),
        ],
      ),
    );
  }
}
