import 'package:flutter_full_learn/404/bloc/login/model/login_model.dart';
import 'package:flutter_full_learn/product/model/token_model.dart';

class LoginState {
  final bool isLoading;
  final String? error;
  final LoginModel? model;
  final TokenModel? tokenModel;
  final bool isCompleted;

  const LoginState({
    this.isLoading = false,
    this.error,
    this.model,
    this.tokenModel,
    this.isCompleted = false,
  });

  LoginState copyWith({
    bool? isLoading,
    String? error,
    LoginModel? model,
    TokenModel? tokenModel,
    bool? isCompleted,
  }) {
    return LoginState(
      isLoading: isLoading ?? false,
      error: error ?? this.error,
      model: model ?? this.model,
      tokenModel: tokenModel ?? this.tokenModel,
      isCompleted: isCompleted ?? false,
    );
  }
}
