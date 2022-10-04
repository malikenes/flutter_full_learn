import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/image_learn_202.dart';
import 'package:flutter_full_learn/404/bloc/login/cubit/login/login_cubit.dart';
import 'package:flutter_full_learn/404/bloc/login/cubit/login/login_state.dart';
import 'package:flutter_full_learn/404/bloc/login/service/login_service.dart';
import 'package:flutter_full_learn/product/vexana_network_manager.dart';
import 'package:kartal/kartal.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _loginText = 'Login';
  final GlobalKey<FormState> _formLoginKey = GlobalKey();
  final TextEditingController _emailcontroller =
      TextEditingController();
  final TextEditingController _pwcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginCubit>(
      create: (context) {
        return LoginCubit(LoginService(VexanaNetworkManager()));
      },
      child: Scaffold(
        appBar: AppBar(
          title: BlocBuilder<LoginCubit, LoginState>(
            builder: (context, state) {
              return state.isLoading
                  ? CircularProgressIndicator(
                      color: context.colorScheme.secondary)
                  : const SizedBox();
            },
          ),
        ),
        body: Form(
            autovalidateMode: AutovalidateMode.always,
            key: _formLoginKey,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(children: [
                _Login(
                  emailcontroller: _emailcontroller,
                  pwcontroller: _pwcontroller,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                _LoginButton(
                    formLoginKey: _formLoginKey,
                    emailcontroller: _emailcontroller,
                    pwcontroller: _pwcontroller,
                    loginText: _loginText),
              ]),
            )),
      ),
    );
  }
}

class _LoginButton extends StatelessWidget {
  const _LoginButton({
    Key? key,
    required GlobalKey<FormState> formLoginKey,
    required TextEditingController emailcontroller,
    required TextEditingController pwcontroller,
    required String loginText,
  })  : _formLoginKey = formLoginKey,
        _emailcontroller = emailcontroller,
        _pwcontroller = pwcontroller,
        _loginText = loginText,
        super(key: key);

  final GlobalKey<FormState> _formLoginKey;
  final TextEditingController _emailcontroller;
  final TextEditingController _pwcontroller;
  final String _loginText;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state.isCompleted == true) {
          context.navigateToPage(const ImageLearn202());
        }
      },
      builder: (context, state) {
        return ElevatedButton(
            onPressed: () {
              if (_formLoginKey.currentState?.validate() ?? false) {
                context.read<LoginCubit>().checkUser(
                    _emailcontroller.text, _pwcontroller.text);
              }
            },
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child:
                  Text('$_loginText - ${state.model?.email ?? ''}'),
            ));
      },
    );
  }
}

class _Login extends StatelessWidget {
  const _Login(
      {Key? key,
      required TextEditingController emailcontroller,
      required TextEditingController pwcontroller})
      : _emailController = emailcontroller,
        _pwController = pwcontroller,
        super(key: key);
  final _emailController;
  final _pwController;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: _emailController,
          validator: (String? data) =>
              (data?.isValidEmail ?? false) ? null : 'Problem var',
          decoration: const InputDecoration(labelText: 'email'),
        ),
        TextFormField(
          controller: _pwController,
          obscureText: true,
          // validator: (String? data) =>
          //     (data?.isValidPassword ?? false) ? null : 'Problem var',
          decoration: const InputDecoration(labelText: 'password'),
        ),
      ],
    );
  }
}
