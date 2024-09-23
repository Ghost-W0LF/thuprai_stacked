import 'package:thuprai_stacked/base/network/rest_client.dart';
import 'package:thuprai_stacked/services/dio_instance_service.dart';

final restClient = RestClient(DioInstanceService().dio);
