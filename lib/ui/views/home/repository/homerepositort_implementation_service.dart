import 'package:thuprai_stacked/app/app.locator.dart';
import 'package:thuprai_stacked/base/network/retro_fit_injection.dart';
import 'package:thuprai_stacked/ui/views/home/model/home_model.dart';
import 'package:thuprai_stacked/ui/views/home/repository/home_repository.dart';
import 'package:thuprai_stacked/ui/views/home/service/home_service.dart';

class HomerepositortImplementationService implements HomeRepository {
  final homeService = locator<HomeService>();

  @override
  Future<HomeModel?> getHomeData() async {
    final data = restClient.getHomeData();
    return data;
  }
}
