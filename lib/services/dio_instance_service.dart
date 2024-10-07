import 'package:dio/dio.dart';
import 'package:thuprai_stacked/base/network/app_url.dart';
import 'package:thuprai_stacked/base/network/auth_interceptor.dart';

class DioInstanceService {
  DioInstanceService() {
    dio.interceptors.add(AuthInterceptor());
    dio.interceptors.add(LogInterceptor());
  }
  final dio = Dio(BaseOptions(baseUrl: AppUrl.baseUrl));
}
