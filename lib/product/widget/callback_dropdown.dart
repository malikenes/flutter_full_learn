import 'package:flutter/material.dart';

import '../../303/callback_learn.dart';

class CallbackDropDown extends StatefulWidget {
  const CallbackDropDown({Key? key, required this.onUserSelected})
      : super(key: key);

  final void Function(CallbackUser user) onUserSelected;
  @override
  State<CallbackDropDown> createState() => _CallbackDropDownState();
}

class _CallbackDropDownState extends State<CallbackDropDown> {
  CallbackUser? _user;

  void _updateuser(CallbackUser? item) {
    setState(() {
      _user = item;
    });
    if (_user != null) {
      widget.onUserSelected.call(_user!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<CallbackUser>(
        value: _user,
        items: CallbackUser.dummyUsers().map((e) {
          return DropdownMenuItem(
            child: Text(e.name),
            value: e,
          );
        }).toList(),
        onChanged: _updateuser);
  }
}
