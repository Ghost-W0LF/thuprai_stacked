import 'package:dio/dio.dart';

class DioInstanceService {
  DioInstanceService() {
    // dio.interceptors.add(LogInterceptor());
  }
  final dio = Dio(BaseOptions());
}
