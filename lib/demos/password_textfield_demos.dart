import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({Key? key}) : super(key: key);

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  final _obscureText = "#";
  bool _isSecure = true;
  final TextEditingController _controller = TextEditingController();
  void _changeLoading() {
    setState(() {
      _isSecure = !_isSecure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
        autofillHints: [AutofillHints.password],
        keyboardType: TextInputType.visiblePassword,
        obscureText: _isSecure,
        obscuringCharacter: _obscureText,
        decoration: InputDecoration(
          border: UnderlineInputBorder(),
          hintText: "Password",
          suffix: _onVisibilityIcon(),
        ));
  }

  IconButton _onVisibilityIcon() {
    return IconButton(
      icon: AnimatedCrossFade(
        crossFadeState: _isSecure
            ? CrossFadeState.showFirst
            : CrossFadeState.showSecond,
        duration: Duration(seconds: 1),
        firstChild: Icon(Icons.visibility),
        secondChild: Icon(Icons.visibility_off_outlined),
      ),
      onPressed: () {
        _changeLoading();
      },
    );
  }
}
