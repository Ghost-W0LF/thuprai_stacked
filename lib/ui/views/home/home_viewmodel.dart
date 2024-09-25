import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:thuprai_stacked/app/app.locator.dart';
import 'package:thuprai_stacked/app/app.router.dart';
import 'package:thuprai_stacked/ui/views/home/model/home_model.dart';
import 'package:thuprai_stacked/ui/views/home/repository/homerepositort_implementation_service.dart';

class HomeViewModel extends BaseViewModel with Initialisable {
  final _homeRepository = locator<HomerepositortImplementationService>();
  final _navigation = locator<NavigationService>();
  HomeModel? featchedDataa = HomeModel();
  @override
  Future<void> initialise() async {
    await getHomeData();
  }

  Future<void> getHomeData() async {
    try {
      setBusy(true);
      final response = await _homeRepository.getHomeData();
      featchedDataa = response;
    } catch (e) {
      debugPrint(e.toString());
    } finally {
      setBusy(false);
    }
  }

  onPressedBook(String bookTitle, int index, String? slugs) {
    _navigation.navigateToBookdetailView(bookTitle: bookTitle, slugs: slugs);
  }
}
