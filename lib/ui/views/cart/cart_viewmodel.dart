import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:thuprai_stacked/app/app.locator.dart';
import 'package:thuprai_stacked/ui/views/cart/model/cart_patch_model.dart';
import 'package:thuprai_stacked/ui/views/cart/model/get_cart_model.dart';
import 'package:thuprai_stacked/ui/views/cart/repository/cartrepositoryimplementation_service.dart';

class CartViewModel extends BaseViewModel with Initialisable {
  /// Items of cart
  GetCartModel? cart = GetCartModel();
  int productQuantity = 0;

  final repositort = locator<CartrepositoryimplementationService>();



  /// To delete item
  Future<void> deleteItem(int index) async {
    try {
      repositort.deleteCart(
          cart?.id.toString() ?? '', cart?.lines?[index].id.toString() ?? '');
      rebuildUi();
    } on DioException catch (e) {
      debugPrint('error:-${e.response?.statusMessage.toString()}');
    }
  }

  /// Increase the counter
  Future<void> increaseCart(int index) async {
    int quantity = cart?.lines?[index].quantity ?? 1;

    try {
      repositort.updateCart(CartPatchModel(quantity: quantity + 1),
          cart?.id.toString() ?? '', cart?.lines?[index].id.toString() ?? '');
      rebuildUi();
    } on DioException catch (e) {
      debugPrint('error:-${e.response?.statusMessage.toString()}');
    }
  }

  /// Decrease the counter
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

  /// fetch data to cart
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
