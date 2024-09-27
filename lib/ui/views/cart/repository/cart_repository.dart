import 'package:thuprai_stacked/ui/views/cart/model/cart_patch_model.dart';
import 'package:thuprai_stacked/ui/views/cart/model/get_cart_model.dart';

abstract class CartRepository {
  Future<GetCartModel>? getCart() {
    return null;
  }

  Future<CartPatchModel>? updateCart(
      CartPatchModel patchModel, String cartId, String linesId) {
    return null;
  }

  Future<void> deleteCart(String cartId, String linesId) async {}
}
