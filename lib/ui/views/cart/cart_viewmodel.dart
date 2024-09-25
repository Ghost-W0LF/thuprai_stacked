import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:thuprai_stacked/app/app.locator.dart';
import 'package:thuprai_stacked/ui/views/cart/model/get_cart_model.dart';
import 'package:thuprai_stacked/ui/views/cart/repository/cartrepositoryimplementation_service.dart';

class CartViewModel extends BaseViewModel with Initialisable {
  GetCartModel? cart = GetCartModel();
  final repositort = locator<CartrepositoryimplementationService>();
  Future<void> getCartData() async {
    setBusy(true);
    try {
      final fetchedData = await repositort.getCart();
      cart = fetchedData;
    } catch (e) {
      debugPrint(e.toString());
    } finally {
      debugPrint(cart?.lines?.length.toString());
      setBusy(false);
    }
  }

  @override
  void initialise() async {
    await getCartData();
  }
}
