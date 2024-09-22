import 'package:thuprai_stacked/ui/views/login/model/login_request_model.dart';

abstract class LoginRepository {
  Future<String?> loginRepository(LoginRequestModel loginModel);
}
