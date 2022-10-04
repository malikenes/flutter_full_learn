import 'package:flutter_full_learn/product/model/token_model.dart';
import 'package:vexana/vexana.dart';

import '../model/login_model.dart';

abstract class ILoginService {
  final INetworkManager networkManager;
  ILoginService(this.networkManager);

  Future<IResponseModel<TokenModel?>?> login(LoginModel model);
  final _loginPath = 'api/login';
}

class LoginService extends ILoginService {
  LoginService(INetworkManager networkManager)
      : super(networkManager);

  @override
  Future<IResponseModel<TokenModel?>?> login(LoginModel model) async {
    return await networkManager.send<TokenModel, TokenModel>(
        _loginPath,
        data: model,
        parseModel: TokenModel(),
        method: RequestType.POST);
  }
}
