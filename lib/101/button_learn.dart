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
            child: const Text("Text"),
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
          const ElevatedButton(
              onPressed: null, child: Text("Elevated")),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.abc_outlined)),
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.abc_rounded),
          ),
          OutlinedButton(
            onPressed: () {},
            child: const Text("Outlined"),
            style: OutlinedButton.styleFrom(
                backgroundColor: Colors.blue),
          ),
          InkWell(
            onTap: () {},
            child: const Text("Inkwell"),
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
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
          ),
        ],
      ),
    );
  }
}
