import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:thuprai_stacked/app/app.locator.dart';
import 'package:thuprai_stacked/base/debouncer/debounce.dart';
import 'package:thuprai_stacked/ui/views/cart/model/cart_patch_model.dart';
import 'package:thuprai_stacked/ui/views/cart/model/get_cart_model.dart';
import 'package:thuprai_stacked/ui/views/cart/repository/cartrepositoryimplementation_service.dart';

class CartViewModel extends BaseViewModel with Initialisable {
  /// Items of cart
  GetCartModel? cart = GetCartModel();

  final repositort = locator<CartrepositoryimplementationService>();
  final Debouncer _debouncer = Debouncer(milliseconds: 300);
  int increaseCounter = 0;
  int decreaseCount = 0;

  void addCounter() {
    increaseCounter += 1;
    debugPrint(increaseCounter.toString());
    notifyListeners();
  }

  void decreaseCounter(int index) {
    int productCount = cart?.lines?[index].quantity ?? 0;
    if (productCount > 0) {
      decreaseCount -= 1;
    }

    debugPrint(decreaseCount.toString());
    notifyListeners();
  }

  /// To delete item
  Future<void> deleteItem(int index) async {
    try {
      repositort.deleteCart(
          cart?.id.toString() ?? '', cart?.lines?[index].id.toString() ?? '');
      _debouncer.run(() async {
        await getCartData();
      });
    } on DioException catch (e) {
      debugPrint('error:-${e.response?.statusMessage.toString()}');
    }
  }

  /// Increase the counter
  Future<void> increaseCart(int index) async {
    int quantity = cart?.lines?[index].quantity ?? 1;

    try {
      repositort.updateCart(
          CartPatchModel(quantity: quantity + increaseCounter),
          cart?.id.toString() ?? '',
          cart?.lines?[index].id.toString() ?? '');

      _debouncer.run(() async {
        await getCartData();
        increaseCounter = 0;
      });
    } on DioException catch (e) {
      debugPrint(
          'update counter  error:-${e.response?.statusMessage.toString()}');
    }
  }

  /// Decrease the counter
  Future<void> decreaseCart(int index) async {
    int quantity = cart?.lines?[index].quantity ?? 1;

    try {
      repositort.updateCart(CartPatchModel(quantity: quantity + decreaseCount),
          cart?.id.toString() ?? '', cart?.lines?[index].id.toString() ?? '');
      _debouncer.run(() async {
        decreaseCount = 0;
        await getCartData();
      });
    } on DioException catch (e) {
      debugPrint('error:-${e.response?.statusMessage.toString()}');
    }
  }

  /// fetch data to cart
  Future<GetCartModel?> getCartData() async {
    setBusy(true);
    try {
      final fetchedData = await repositort.getCart();
      cart = fetchedData;
      return cart;
    } catch (e) {
      debugPrint(e.toString());
      return null;
    } finally {
      setBusy(false);
    }
  }

  @override
  void initialise() async {
    await getCartData();
  }
}
