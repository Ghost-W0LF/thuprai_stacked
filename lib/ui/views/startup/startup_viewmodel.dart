import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:thuprai_stacked/app/app.locator.dart';
import 'package:thuprai_stacked/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:thuprai_stacked/services/securestorage_service.dart';

class StartupViewModel extends BaseViewModel {
  final _navigationService = locator.get<NavigationService>();
  final _secureStorage = locator.get<SecurestorageService>();

  // Place anything here that needs to happen before we get into the application
  Future runStartupLogic() async {
    await Future.delayed(const Duration(milliseconds: 500));
    String? savedToken = await _secureStorage.readToken();
    debugPrint("$savedToken");

    // This is where you can make decisions on where your app should navigate when
    // you have custom startup logic

    savedToken == null
        ? _navigationService.replaceWithLoginView()
        : _navigationService.replaceWithHomeView();
  }
}
