import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:thuprai_stacked/app/app.locator.dart';
import 'package:thuprai_stacked/app/app.router.dart';
import 'package:thuprai_stacked/base/network/retro_fit_injection.dart';
import 'package:thuprai_stacked/services/securestorage_service.dart';
import 'package:thuprai_stacked/ui/views/cart/model/get_cart_model.dart';
import 'package:thuprai_stacked/ui/views/cart/repository/cartrepositoryimplementation_service.dart';
import 'package:thuprai_stacked/ui/views/home/model/home_model.dart';
import 'package:thuprai_stacked/ui/views/home/repository/homerepositort_implementation_service.dart';

class HomeViewModel extends BaseViewModel with Initialisable {
  final _homeRepository = locator<HomerepositortImplementationService>();
  final _cartRepository = locator<CartrepositoryimplementationService>();
  final _navigation = locator<NavigationService>();
  HomeModel? featchedDataa = HomeModel();
  GetCartModel? cartData = GetCartModel();

  final tokenStorage = locator<SecurestorageService>();
  @override
  Future<void> initialise() async {
    await getHomeData();
  }

  void navigatetoCart() {
    _navigation.navigateToCartView();
  }

  void logout() {
    restClient.logout();
    tokenStorage.deleteToken();
    _navigation.replaceWithLoginView();
  }

  Future<HomeModel?> getHomeData() async {
    try {
      setBusy(true);
      final response = await _homeRepository.getHomeData();

      featchedDataa = response;
      final respose = await _cartRepository.getCart();
      cartData = respose;

      return featchedDataa;
    } catch (e) {
      debugPrint(e.toString());
    } finally {
      setBusy(false);
    }
    return featchedDataa;
  }

  onPressedBook(String bookTitle, int index, String? slugs) {
    _navigation.replaceWithBookdetailView(bookTitle: bookTitle, slugs: slugs);
  }
}
