import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:thuprai_stacked/app/app.locator.dart';
import 'package:thuprai_stacked/app/app.router.dart';
import 'package:thuprai_stacked/ui/views/bookdetail/model/book_model.dart';
import 'package:thuprai_stacked/ui/views/bookdetail/repository/bookdetailrepository_implementation_service.dart';
import 'package:thuprai_stacked/ui/views/cart/model/add_cart_request_model.dart';

class BookdetailViewModel extends BaseViewModel with Initialisable {
  BookdetailViewModel({this.viewModelslug});

  String? viewModelslug;
  BookModel? bookModel = BookModel();
  final _bookRepository =
      locator.get<BookdetailrepositoryImplementationService>();
  final snackBar = locator<SnackbarService>();

  final int quantity = 1;

  @override
  Future<void> initialise() async {
    await getBookData();
  }

  void navigationto() {
    final navigation = locator<NavigationService>();
    navigation.replaceWithCartView();
  }

  Future<void> addTocart() async {
    try {
      await _bookRepository.addToCart(AddCartRequest(
          path: '/book/$viewModelslug/',
          quantity: quantity,
          url: bookModel?.hardcover != null
              ? 'http://127.0.0.1:8000/v1/api/products/${bookModel?.hardcover["product_id"].toString()}/'
              : 'http://127.0.0.1:8000/v1/api/products/${bookModel?.paperback?.productId}/'));

      snackBar.showSnackbar(message: "Added to cart");
    } on DioException catch (e) {
      debugPrint('error:-${e.response?.statusMessage.toString()}');
    }
  }

  Future<void> getBookData() async {
    setBusy(true);
    try {
      final response =
          await _bookRepository.getBookDetail(viewModelslug.toString());
      bookModel = response;
    } catch (e) {
      debugPrint(e.toString());
    } finally {
      setBusy(false);
    }
  }
}
