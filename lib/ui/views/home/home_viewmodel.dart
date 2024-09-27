import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:thuprai_stacked/app/app.locator.dart';
import 'package:thuprai_stacked/app/app.router.dart';
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
  @override
  Future<void> initialise() async {
    await getHomeData();
  }

  Future<void> getHomeData() async {
    try {
      setBusy(true);
      final response = await _homeRepository.getHomeData();

      featchedDataa = response;
      final cartItem = await _cartRepository.getCart();
      cartData = cartItem;
    } catch (e) {
      debugPrint(e.toString());
    } finally {
      setBusy(false);
    }
  }

  onPressedBook(String bookTitle, int index, String? slugs) {
    _navigation.replaceWithBookdetailView(bookTitle: bookTitle, slugs: slugs);
  }
}
