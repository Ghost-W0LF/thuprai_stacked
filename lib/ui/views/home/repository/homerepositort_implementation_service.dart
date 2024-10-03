import 'package:thuprai_stacked/base/network/retro_fit_injection.dart';
import 'package:thuprai_stacked/ui/views/home/model/home_model.dart';
import 'package:thuprai_stacked/ui/views/home/repository/home_repository.dart';

class HomerepositortImplementationService implements HomeRepository {
  @override
  Future<HomeModel?> getHomeData() async {
    try {
      final data = restClient.getHomeData();
      return data;
    } catch (e) {
      rethrow;
    }
  }
}
