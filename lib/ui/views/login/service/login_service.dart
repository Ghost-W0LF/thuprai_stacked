import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:thuprai_stacked/base/network/app_url.dart';
import 'package:thuprai_stacked/services/dio_instance_service.dart';
import 'package:thuprai_stacked/ui/views/login/model/login_request_model.dart';

class LoginService {
  final dio = DioInstanceService().dio;

  Future<Response> login(LoginRequestModel loginModel) async {
    return await dio.post(AppUrl.loginUrl, data: jsonEncode(loginModel));
  }
}
