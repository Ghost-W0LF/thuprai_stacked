import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:thuprai_stacked/app/app.locator.dart';
import 'package:thuprai_stacked/ui/views/home/model/home_model.dart';
import 'package:thuprai_stacked/ui/views/home/repository/homerepositort_implementation_service.dart';

class HomeViewModel extends BaseViewModel with Initialisable {
  final _homeRepository = locator<HomerepositortImplementationService>();
  HomeModel? featchedDataa = HomeModel();
  bool isLoading = true;
  @override
  Future<void> initialise() async {
    await getHomeData();
  }

  Future<void> getHomeData() async {
    setBusy(true);

    try {
      final response = await _homeRepository.getHomeData();
      debugPrint(response?.newReleases?[0].title.toString());
      featchedDataa = response;

      // isLoading = false;
      setBusy(false);
      notifyListeners();
    } catch (e) {
      debugPrint(e.toString());
    } finally {
      setBusy(false);
    }
  }
}
