import 'package:flutter/material.dart';
import 'package:flutter_full_learn/product/navigate/navigate_router.dart';
import 'package:flutter_full_learn/product/widget/button/answer_button.dart';
import 'package:flutter_full_learn/product/widget/button/loading_button.dart';
import 'package:flutter_full_learn/product/widget/callback_dropdown.dart';

class CallbackLearn extends StatefulWidget {
  const CallbackLearn({Key? key}) : super(key: key);

  @override
  State<CallbackLearn> createState() => _CallbackLearnState();
}

class CallbackUser {
  final String name;
  final int id;

  CallbackUser(this.name, this.id);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CallbackUser &&
        other.name == name &&
        other.id == id;
  }

  static List<CallbackUser> dummyUsers() {
    return [CallbackUser('emk', 123), CallbackUser('emk2', 1234)];
  }
}

class _CallbackLearnState extends State<CallbackLearn> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    navigateToHome();
  }

  Future<void> navigateToHome() async {
    await Future.delayed(const Duration(seconds: 1));
    Navigator.of(context).pushNamed(
      NavigateRoutes.home.withParaf,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          CallbackDropDown(onUserSelected: (CallbackUser user) {}),
          AnswerButton(onNumber: ((number) {
            return number % 2 == 1;
          })),
          LoadingButton(
              title: 'Save',
              onPressed: () async {
                await Future.delayed(const Duration(seconds: 1));
              })
        ],
      ),
    );
  }
}
