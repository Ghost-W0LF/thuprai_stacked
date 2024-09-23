import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:thuprai_stacked/app/app.locator.dart';
import 'package:thuprai_stacked/base/network/retro_fit_injection.dart';
import 'package:thuprai_stacked/ui/views/home/model/home_model.dart';
import 'package:thuprai_stacked/ui/views/home/repository/home_repository.dart';
import 'package:thuprai_stacked/ui/views/home/service/home_service.dart';

class HomerepositortImplementationService implements HomeRepository {
  final homeService = locator<HomeService>();
  List<HomeModel> homeData = [];

  @override
  Future<HomeModel?> getHomeData() async {
    final response = await homeService.homeService();
    final homeResponse = await restClient.getHomeData();

    try {
      homeData = homeResponse;
      if (response.statusCode == 200) {
        return HomeModel.fromJson(jsonDecode(response.data));
      }
    } catch (e) {
      debugPrint(e.toString());
    }
    return null;
  }
}
