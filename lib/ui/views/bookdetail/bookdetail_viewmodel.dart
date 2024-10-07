import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:thuprai_stacked/app/app.router.dart';
import 'package:thuprai_stacked/base/wrapper/base_view_model_wrapper.dart';
import 'package:thuprai_stacked/ui/common/app_colors.dart';
import 'package:thuprai_stacked/ui/views/bookdetail/model/book_model.dart';
import 'package:thuprai_stacked/ui/views/cart/model/add_cart_request_model.dart';
import 'package:thuprai_stacked/ui/views/cart/model/get_cart_model.dart';

class BookdetailViewModel extends BaseViewModelWrapper with Initialisable {
  BookdetailViewModel({this.viewModelslug});

  String? viewModelslug;
  BookModel? bookModel = BookModel();
  GetCartModel? cartData = GetCartModel();
  final int quantity = 1;
  @override
  Future<void> initialise() async {
    await getBookData();
  }

  /// navigate to cart
  void navigationto() {
    navigation.navigateToCartView();
  }

  void onPressedBook(String bookTitle, int index, String? slugs) {
    navigation.replaceWithBookdetailView(bookTitle: bookTitle, slugs: slugs);
  }

  /// navigate to cart
  void navigationPop() {
    navigation.replaceWithBottomNavigationView();
  }

  /// Add to cart
  Future<String> addTocart() async {
    try {
      await bookRepository.addToCart(AddCartRequest(
          path: '/book/$viewModelslug/',
          quantity: quantity,
          url: bookModel?.hardcover != null
              ? 'http://127.0.0.1:8000/v1/api/products/${bookModel?.hardcover["product_id"].toString()}/'
              : 'http://127.0.0.1:8000/v1/api/products/${bookModel?.paperback?.productId}/'));
      notifyListeners();

      //Snackbar on success
      snackBar.registerCustomSnackbarConfig(
        variant: 'success',
        config: SnackbarConfig(
          showProgressIndicator: true,
          backgroundColor: kcPrimaryColor,
          textColor: Colors.white,
          borderRadius: 8,
          duration: const Duration(seconds: 2),
          snackPosition: SnackPosition.BOTTOM,
        ),
      );
      snackBar.showCustomSnackBar(
        message: "successfully added to cart",
        variant: 'success',
      );

      return 'success';
    } on DioException catch (e) {
      debugPrint('error:-${e.response?.statusMessage.toString()}');
      notifyListeners();
      snackBar.registerCustomSnackbarConfig(
        variant: 'error',
        config: SnackbarConfig(
          backgroundColor: Colors.red,
          textColor: Colors.white.withOpacity(1),
          borderRadius: 8,
          duration: const Duration(seconds: 2),
          snackPosition: SnackPosition.BOTTOM,
        ),
      );
      snackBar.showCustomSnackBar(
        message: "${e.response?.statusMessage.toString()}",
        variant: 'error',
      );
      return 'Error: ${e.response?.statusMessage.toString()}';
    }
  }

  /// Get book data
  Future<BookModel?> getBookData() async {
    setBusy(true);
    try {
      final response =
          await bookRepository.getBookDetail(viewModelslug.toString());
      bookModel = response;
      final cartItem = await cartRepository.getCart();
      cartData = cartItem;
    } catch (e) {
      debugPrint(e.toString());
    } finally {
      setBusy(false);
    }
    return bookModel;
  }
}
