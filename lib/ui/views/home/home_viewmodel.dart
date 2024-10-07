import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:thuprai_stacked/app/app.locator.dart';
import 'package:thuprai_stacked/app/app.router.dart';
import 'package:thuprai_stacked/base/network/retro_fit_injection.dart';
import 'package:thuprai_stacked/base/wrapper/base_view_model_wrapper.dart';
import 'package:thuprai_stacked/ui/views/cart/model/get_cart_model.dart';
import 'package:thuprai_stacked/ui/views/cart/repository/cartrepositoryimplementation_service.dart';
import 'package:thuprai_stacked/ui/views/home/model/home_model.dart';
import 'package:thuprai_stacked/ui/views/home/repository/homerepositort_implementation_service.dart';

class HomeViewModel extends BaseViewModelWrapper with Initialisable {
  final _homeRepository = locator<HomerepositortImplementationService>();
  final _cartRepository = locator<CartrepositoryimplementationService>();

  @override
  Future<void> initialise() async {
    await getHomeData();
  }

  void navigatetoCart() {
    navigation.navigateToCartView();
  }

  void logout() {
    restClient.logout();
    tokenStorage.deleteToken();
    navigation.replaceWithLoginView();
  }

  HomeModel? featchedDataa = HomeModel();
  GetCartModel? cartData = GetCartModel();

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

 void onPressedBook(String bookTitle, int index, String? slugs) {
    navigation.replaceWithBookdetailView(bookTitle: bookTitle, slugs: slugs);
  }
}
