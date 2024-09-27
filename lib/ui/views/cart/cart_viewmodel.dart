import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:thuprai_stacked/app/app.locator.dart';
import 'package:thuprai_stacked/ui/views/cart/model/cart_patch_model.dart';
import 'package:thuprai_stacked/ui/views/cart/model/get_cart_model.dart';
import 'package:thuprai_stacked/ui/views/cart/repository/cartrepositoryimplementation_service.dart';

class CartViewModel extends BaseViewModel with Initialisable {
  /// Index from the view add and remoce button

  /// Items of cart
  GetCartModel? cart = GetCartModel();

  final repositort = locator<CartrepositoryimplementationService>();

  Future<void> increaseCart(int index) async {
    int quantity = cart?.lines?[index].quantity ?? 1;

    debugPrint("secondIndex${index.toString()}");

    try {
      repositort.updateCart(CartPatchModel(quantity: quantity + 1),
          cart?.id.toString() ?? '', cart?.lines?[index].id.toString() ?? '');
      rebuildUi();
    } on DioException catch (e) {
      debugPrint('error:-${e.response?.statusMessage.toString()}');
    }
  }

  Future<void> decreaseCart(int index) async {
    int quantity = cart?.lines?[index].quantity ?? 1;

    try {
      repositort.updateCart(CartPatchModel(quantity: quantity - 1),
          cart?.id.toString() ?? '', cart?.lines?[index].id.toString() ?? '');
      rebuildUi();
    } on DioException catch (e) {
      debugPrint('error:-${e.response?.statusMessage.toString()}');
    }
  }

  Future<void> getCartData() async {
    setBusy(true);
    try {
      final fetchedData = await repositort.getCart();
      cart = fetchedData;
    } catch (e) {
      debugPrint(e.toString());
    } finally {
      setBusy(false);
    }
  }

  @override
  void initialise() async {
    await getCartData();
  }
}
