import 'package:thuprai_stacked/ui/views/home/model/home_model.dart';

abstract class HomeRepository {
  Future<HomeModel?> getHomeData();
}
