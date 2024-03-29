import 'package:vexana/vexana.dart';
import 'package:json_annotation/json_annotation.dart';
part 'login_model.g.dart';

@JsonSerializable()
class LoginModel extends INetworkModel<LoginModel> {
  final String email;
  final String password;

  LoginModel(this.email, this.password);

  @override
  LoginModel fromJson(Map<String, dynamic> json) {
    return _$LoginModelFromJson(json);
  }

  @override
  Map<String, dynamic>? toJson() {
    return _$LoginModelToJson(this);
  }
}
