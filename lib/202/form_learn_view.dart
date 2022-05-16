import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class FormLearnView extends StatefulWidget {
  const FormLearnView({Key? key}) : super(key: key);

  @override
  State<FormLearnView> createState() => _FormLearnViewState();
}

class _FormLearnViewState extends State<FormLearnView> {
  GlobalKey<FormState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: _key,
        autovalidateMode: AutovalidateMode.always,
        onChanged: () {
          print("a");
        },
        child: Column(
          children: [
            TextFormField(
              validator: (value) {
                return (value?.isNotEmpty ?? false)
                    ? null
                    : "Bu alan boş geçilemez;";
              },
            ),
            TextFormField(
              validator: FormFieldValidator().isNotEmpy,
            ),
            DropdownButtonFormField(items: [
              DropdownMenuItem(child: Text("a"), value: Text("v")),
              DropdownMenuItem(child: Text("a"), value: Text("1v")),
              DropdownMenuItem(child: Text("a"), value: Text("v2")),
            ], onChanged: (value) {}),
            ElevatedButton(
                onPressed: () {
                  if (_key.currentState?.validate() ?? false) {}
                  ;
                },
                child: Text("Save"))
          ],
        ),
      ),
    );
  }
}

class FormFieldValidator {
  String? isNotEmpy(String? data) {
    return (data?.isNotEmpty ?? false)
        ? null
        : "Bu alan boş geçilemez";
  }
}
