import 'package:dio/dio.dart';
import 'package:thuprai_stacked/base/network/interceptor.dart';

class DioInstanceService {
  DioInstanceService() {
    //dio.interceptors.add(LogInterceptor());
    dio.interceptors.add(AuthInterceptor());
  }
  final dio = Dio(BaseOptions(
  ));
}
