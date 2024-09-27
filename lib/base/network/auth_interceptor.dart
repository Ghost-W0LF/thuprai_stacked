import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:thuprai_stacked/app/app.locator.dart';
import 'package:thuprai_stacked/base/network/app_url.dart';
import 'package:thuprai_stacked/services/securestorage_service.dart';

class AuthInterceptor extends InterceptorsWrapper {
  final tokenStorage = locator<SecurestorageService>();
  @override
  Future onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final savedToken = await tokenStorage.readToken();
    final List<String> tokenRequired = [
      'api/basket/',
      '/login/',
      'api/basket/add-product/',
      AppUrl.loginUrl
    ];

    if (tokenRequired.contains(options.path) ||
        tokenRequired.contains(options.uri.toString())) {
      if (savedToken != null) {
        options.headers['Authorization'] = 'Token $savedToken';
        debugPrint("Token Sent to the site$savedToken");
      }
    }

    return handler.next(options);
  }

  @override
  Future onResponse(
      Response response, ResponseInterceptorHandler handler) async {
    String responseRecived = response.toString();
    if (responseRecived.contains('token')) {
      await tokenStorage.writeToken(response.data['token']);
    }

    return handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.response != null) {
      if (err.response!.statusCode == 400) {}
    }

    if (err.response!.statusCode == 503) {}
    return super.onError(err, handler);
  }
}
