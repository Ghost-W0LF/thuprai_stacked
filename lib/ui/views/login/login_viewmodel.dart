import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:thuprai_stacked/app/app.locator.dart';
import 'package:thuprai_stacked/app/app.router.dart';
import 'package:thuprai_stacked/ui/views/login/login_view.form.dart';
import 'package:thuprai_stacked/ui/views/login/model/login_request_model.dart';
import 'package:thuprai_stacked/ui/views/login/repository/loginrepository_implementation_service.dart';

class LoginViewModel extends FormViewModel with $LoginView {
  final loginRepository = locator<LoginrepositoryImplementationService>();
  final snackBar = locator.get<SnackbarService>();

  final _navigation = locator<NavigationService>();

  void navigationToSignup() {
    _navigation.navigateToSignupView();
  }

  Future<void> requestLogin() async {
    /*  loginRepository.loginRepository(LoginRequestModel(
        email: emailController.text, password: passwordController.text)); */
    try {
      await loginRepository.loginRepository(LoginRequestModel(
          email: emailController.text, password: passwordController.text));
      _navigation.replaceWithHomeView();
    } on DioException catch (e) {
      debugPrint('error is:-${e.response?.statusMessage.toString()}');

      snackBar.showSnackbar(
          message: "${e.response?.data.toString()}",
          duration: const Duration(seconds: 2));
    }
  }
}
