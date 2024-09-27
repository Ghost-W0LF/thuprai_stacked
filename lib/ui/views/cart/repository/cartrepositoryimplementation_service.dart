import 'package:thuprai_stacked/base/network/retro_fit_injection.dart';
import 'package:thuprai_stacked/ui/views/cart/model/cart_patch_model.dart';
import 'package:thuprai_stacked/ui/views/cart/model/get_cart_model.dart';
import 'package:thuprai_stacked/ui/views/cart/repository/cart_repository.dart';

class CartrepositoryimplementationService implements CartRepository {
  @override
  Future<GetCartModel>? getCart() async {
    try {
      final response = restClient.getCart();
      return response;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<CartPatchModel>? updateCart(
      CartPatchModel patchModel, String cartId, String linesId) {
    try {
      final response = restClient.updateCart(patchModel, cartId, linesId);
      return response;
    } catch (e) {
      rethrow;
    }
  }
  
  @override
  Future<void> deleteCart(String cartId, String linesId) {
try {
      final response = restClient.deleteCart( cartId, linesId);
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
