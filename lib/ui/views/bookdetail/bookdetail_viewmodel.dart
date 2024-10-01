import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:thuprai_stacked/app/app.locator.dart';
import 'package:thuprai_stacked/app/app.router.dart';
import 'package:thuprai_stacked/ui/common/app_colors.dart';
import 'package:thuprai_stacked/ui/views/bookdetail/model/book_model.dart';
import 'package:thuprai_stacked/ui/views/bookdetail/repository/bookdetailrepository_implementation_service.dart';
import 'package:thuprai_stacked/ui/views/cart/model/add_cart_request_model.dart';
import 'package:thuprai_stacked/ui/views/cart/model/get_cart_model.dart';
import 'package:thuprai_stacked/ui/views/cart/repository/cartrepositoryimplementation_service.dart';

class BookdetailViewModel extends BaseViewModel with Initialisable {
  BookdetailViewModel({this.viewModelslug});

  String? viewModelslug;
  BookModel? bookModel = BookModel();
  final _bookRepository =
      locator.get<BookdetailrepositoryImplementationService>();
  final snackBar = locator<SnackbarService>();
  GetCartModel? cartData = GetCartModel();

  final _cartRepository = locator<CartrepositoryimplementationService>();
      final navigation = locator<NavigationService>();

  final int quantity = 1;

  @override
  Future<void> initialise() async {
    await getBookData();
  }


  /// navigate to cart
  void navigationto() {

    navigation.navigateToCartView();
  }

  onPressedBook(String bookTitle, int index, String? slugs) {
    navigation.replaceWithBookdetailView(bookTitle: bookTitle, slugs: slugs);
  }
  /// navigate to cart
  void navigationPop() {

    navigation.replaceWithBottomNavigationView();
  }

  /// Add to cart
  Future<void> addTocart() async {
    try {
      await _bookRepository.addToCart(AddCartRequest(
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
    } on DioException catch (e) {
      debugPrint('error:-${e.response?.statusMessage.toString()}');
      notifyListeners();
      snackBar.showCustomSnackBar(
        message: "${e.response?.statusMessage.toString()}",
        variant: 'error',
      );
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
    }
  }

  /// Get book data
  Future<void> getBookData() async {
    setBusy(true);
    try {
      final response =
          await _bookRepository.getBookDetail(viewModelslug.toString());
      bookModel = response;
      final cartItem = await _cartRepository.getCart();
      cartData = cartItem;
    } catch (e) {
      debugPrint(e.toString());
    } finally {
      setBusy(false);
    }
  }
}
