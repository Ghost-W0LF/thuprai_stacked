import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:thuprai_stacked/app/app.locator.dart';
import 'package:thuprai_stacked/ui/views/home/model/home_model.dart';
import 'package:thuprai_stacked/ui/views/home/repository/homerepositort_implementation_service.dart';

class HomeViewModel extends BaseViewModel {
  List<HomeModel?> featchedDataa = [];

  final homeRepository = locator.get<HomerepositortImplementationService>();

  Future<void> getHomeData() async {
    try {
      final apiData = await homeRepository.getHomeData();
      if (apiData != null) {
        featchedDataa = apiData as List<HomeModel?>;
      }
    } catch (e) {
      debugPrint(e.toString());
    } finally {
      debugPrint(featchedDataa.length.toString());
    }
    notifyListeners();
  }
}
