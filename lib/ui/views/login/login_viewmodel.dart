import 'package:stacked/stacked.dart';
import 'package:thuprai_stacked/app/app.locator.dart';
import 'package:thuprai_stacked/ui/views/login/login_view.form.dart';
import 'package:thuprai_stacked/ui/views/login/model/login_request_model.dart';
import 'package:thuprai_stacked/ui/views/login/repository/loginrepository_implementation_service.dart';

class LoginViewModel extends FormViewModel with $LoginView {
  final loginRepository = locator<LoginrepositoryImplementationService>();

  Future<void> requestLogin() async {
    /*  loginRepository.loginRepository(LoginRequestModel(
        email: emailController.text, password: passwordController.text)); */
    loginRepository.loginRepository(LoginRequestModel(
        email: emailController.text, password: passwordController.text));
  }
}
