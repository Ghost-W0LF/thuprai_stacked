
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:thuprai_stacked/app/app.locator.dart';
import 'package:thuprai_stacked/app/app.router.dart';
import 'package:thuprai_stacked/services/securestorage_service.dart';
import 'package:thuprai_stacked/ui/views/login/model/login_request_model.dart';
import 'package:thuprai_stacked/ui/views/login/repository/login_repository.dart';
import 'package:thuprai_stacked/ui/views/login/service/login_service.dart';

class LoginrepositoryImplementationService implements LoginRepository {
  final loginService = locator<LoginService>();
  final _navigation = locator<NavigationService>();
  final _tokenStorage = locator.get<SecurestorageService>();
  @override
  Future<String?> loginRepository(LoginRequestModel loginModel) async {
    final response = await loginService.loginService(loginModel);
    try {
      if (response.statusCode == 200) {
        final token = response.data['token'];
        //navigation to home view
        _tokenStorage.writeToken(token);
        _navigation.replaceWithHomeView();
        return token;
      }else {
        debugPrint('Login failed: ${response.statusCode}');
        return null;
      }
    } catch (e) {
      return 'Error: ${e.toString()}';
    }
  }
}
