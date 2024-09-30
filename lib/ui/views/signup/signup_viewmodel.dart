import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:thuprai_stacked/app/app.locator.dart';
import 'package:thuprai_stacked/app/app.router.dart';
import 'package:thuprai_stacked/ui/views/signup/model/signup_request.dart';

import 'package:thuprai_stacked/ui/views/signup/repository/signup_repository_implementation_service.dart';
import 'package:thuprai_stacked/ui/views/signup/signup_view.form.dart';

class SignupViewModel extends BaseViewModel with $SignupView {
  final signupRepository = locator<SignupRepositoryImplementationService>();
  final _navigation = locator<NavigationService>();
  Future<void> signup() async {
    try {
      final response = await signupRepository.postSignup(SignupRequest(
        fullName: fullNameController.text,
        email: emailController.text,
        password: passwordController.text,
      ));
      _navigation.replaceWithHomeView();
      debugPrint(fullNameController.text.toString());
      debugPrint(response?.token.toString());
    } on DioException catch (e) {
      debugPrint('error is:-${e.response?.statusMessage.toString()}');
    }
  }
}
