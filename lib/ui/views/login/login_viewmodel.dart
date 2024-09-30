import 'package:dio/dio.dart';
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
    if (hasEmailValidationMessage) {
      snackBar.showSnackbar(
          message: "Invalid Email", duration: const Duration(seconds: 2));
    } else if (hasPasswordValidationMessage) {
      snackBar.showSnackbar(
          message: "Invalid Password", duration: const Duration(seconds: 2));
    } else {
      try {
        await loginRepository.loginRepository(LoginRequestModel(
            email: emailController.text, password: passwordController.text));
        _navigation.replaceWithHomeView();
      } on DioException catch (e) {
        snackBar.showSnackbar(
            title: "${e.response?.statusMessage.toString()}",
            message: "${e.response?.data["non_field_errors"].toString()}",
            duration: const Duration(seconds: 2));
      }
    }
  }
}
