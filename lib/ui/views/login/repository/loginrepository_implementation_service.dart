import 'package:thuprai_stacked/base/network/retro_fit_injection.dart';
import 'package:thuprai_stacked/ui/views/login/login_view.form.dart';
import 'package:thuprai_stacked/ui/views/login/model/login_request_model.dart';
import 'package:thuprai_stacked/ui/views/login/model/login_response_model.dart';
import 'package:thuprai_stacked/ui/views/login/repository/login_repository.dart';

class LoginrepositoryImplementationService
    with $LoginView
    implements LoginRepository {



  LoginResponseModel responseModel = LoginResponseModel();

  @override
  Future<String?> loginRepository(LoginRequestModel loginModel) async {
    try {
      // Make API call using RestClient
      final loginResponse = await restClient.login(loginModel);

      if (loginResponse.token != null) {
     
        return loginResponse.token;
      } else {
        return 'Error: Invalid login response';
      }
    } catch (e) {
      rethrow;
    }
  }
}
