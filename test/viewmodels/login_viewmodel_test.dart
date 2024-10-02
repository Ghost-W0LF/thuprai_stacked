import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:thuprai_stacked/app/app.locator.dart';
import 'package:thuprai_stacked/app/app.router.dart';
import 'package:thuprai_stacked/ui/views/login/login_view.form.dart';
import 'package:thuprai_stacked/ui/views/login/login_viewmodel.dart';
import 'package:thuprai_stacked/ui/views/login/model/login_request_model.dart';
import 'package:thuprai_stacked/ui/views/login/repository/loginrepository_implementation_service.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:dio/dio.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('LoginViewModel Tests -', () {
    late LoginViewModel model;
    late LoginrepositoryImplementationService loginRepository;
    late SnackbarService snackbarService;
    late NavigationService navigationService;

    setUp(() {
      registerServices();
      loginRepository = locator<LoginrepositoryImplementationService>();
      snackbarService = locator<SnackbarService>();
      navigationService = locator<NavigationService>();
      model = LoginViewModel();
    });

    tearDown(() => locator.reset());

    test('should show invalid email snackbar when email is invalid', () async {
      // Arrange
      model.setEmailValidationMessage('Invalid Email');

      // Act
      await model.requestLogin();

      // Assert
      verify(snackbarService.showSnackbar(
        message: "Invalid Email",
        duration: const Duration(seconds: 2),
      )).called(1);
    });

    test('should show invalid password snackbar when password is invalid',
        () async {
      // Arrange
      model.setPasswordValidationMessage('Invalid Password');

      // Act
      await model.requestLogin();

      // Assert
      verify(snackbarService.showSnackbar(
        message: "Invalid Password",
        duration: const Duration(seconds: 2),
      )).called(1);
    });

    test('should navigate to home view when login is successful', () async {
      // Arrange
      when(loginRepository.loginRepository(LoginRequestModel(
              email: 'Abhinab1221@gmail.com', password: 'akkhatri')))
          .thenAnswer((_) async {});

      // Act
      await model.requestLogin();

      // Assert
      verify(navigationService.replaceWithHomeView()).called(1);
    });

    test('should show error snackbar when login fails', () async {
      // Arrange
      when(loginRepository.loginRepository(LoginRequestModel(
              email: 'Abhinab1221@gmail.com', password: '123456789')))
          .thenThrow(DioException(
        requestOptions: RequestOptions(path: '/login'),
        response: Response(
          requestOptions: RequestOptions(path: '/login'),
          statusCode: 401,
          data: {"non_field_errors": "[Invalid email or password]"},
        ),
      ));

      // Act
      await model.requestLogin();

      // Assert
      verify(snackbarService.showSnackbar(
        title: "Bad Request",
        message: "[Invalid Email or password]",
        duration: const Duration(seconds: 2),
      )).called(1);
    });

    test('should navigate to signup view when navigationToSignup is called',
        () {
      // Act
      model.navigationToSignup();

      // Assert
      verify(navigationService.navigateToSignupView()).called(1);
    });
  });
}
