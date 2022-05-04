import 'package:flutter/material.dart';

class TextfieldLearn extends StatefulWidget {
  const TextfieldLearn({Key? key}) : super(key: key);

  @override
  State<TextfieldLearn> createState() => _TextfieldLearnState();
}

class _TextfieldLearnState extends State<TextfieldLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
            maxLength: 20,
            buildCounter: (BuildContext context,
                {int? currentLength, bool? isFocused, int? maxLength}) {
              return Container(
                width: 20.0 * (currentLength ?? 0),
                height: 20,
                color: Colors.green,
              );
            },
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            autofillHints: [AutofillHints.email], //keyboradun ustunde ona göre hint veriyor
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.mail_outline_outlined),
                labelText: "Mail"),
          ),
          TextField(),
        ],
      ),
    );
  }
}
