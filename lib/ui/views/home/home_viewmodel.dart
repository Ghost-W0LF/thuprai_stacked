import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:thuprai_stacked/app/app.locator.dart';
import 'package:thuprai_stacked/ui/views/home/model/home_model.dart';
import 'package:thuprai_stacked/ui/views/home/repository/homerepositort_implementation_service.dart';

class HomeViewModel extends BaseViewModel with Initialisable {
  @override
  void initialise() {
    featchedDataa;
  }

  HomeModel? featchedDataa = HomeModel();
  bool isLoading = true;
  final _homeRepository = locator<HomerepositortImplementationService>();
  Future<void> getHomeData() async {
    final response = await _homeRepository.getHomeData();

    debugPrint(response?.newReleases?[0].title.toString());
    if (featchedDataa != null) {
      featchedDataa = response;
    }
  }
}
