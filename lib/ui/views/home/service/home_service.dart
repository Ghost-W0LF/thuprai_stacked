import 'package:dio/dio.dart';
import 'package:thuprai_stacked/base/network/app_url.dart';
import 'package:thuprai_stacked/services/dio_instance_service.dart';

class HomeService {
  final dio = DioInstanceService().dio;

  Future<Response> homeService() {
    return dio.get(AppUrl.homeDataUrl);
  }
}
