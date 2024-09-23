import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:thuprai_stacked/app/app.locator.dart';
import 'package:thuprai_stacked/app/app.router.dart';
import 'package:thuprai_stacked/base/network/retro_fit_injection.dart';
import 'package:thuprai_stacked/services/securestorage_service.dart';
import 'package:thuprai_stacked/ui/views/login/login_view.form.dart';
import 'package:thuprai_stacked/ui/views/login/model/login_request_model.dart';
import 'package:thuprai_stacked/ui/views/login/model/login_response_model.dart';
import 'package:thuprai_stacked/ui/views/login/repository/login_repository.dart';
import 'package:thuprai_stacked/ui/views/login/service/login_service.dart';

class LoginrepositoryImplementationService
    with $LoginView
    implements LoginRepository {
  final loginService = locator<LoginService>();
  final _navigation = locator<NavigationService>();
  final _tokenStorage = locator.get<SecurestorageService>();

  LoginResponseModel responseModel = LoginResponseModel();

  @override
  Future<String?> loginRepository(LoginRequestModel loginModel) async {
    try {
      // Make API call using RestClient
      final loginResponse = await restClient.login(loginModel);

  
      if (loginResponse.token != null) {
        await _tokenStorage.writeToken(loginResponse.token!);
        _navigation.replaceWithHomeView();
        debugPrint(loginResponse.token);
       return loginResponse.token;
      } else {
        return 'Error: Invalid login response';
      }
    } catch (e) {
      // Handle error
      return 'Error: ${e.toString()}';
    }
  }
}
