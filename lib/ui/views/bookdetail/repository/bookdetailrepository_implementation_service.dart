import 'package:flutter/material.dart';
import 'package:thuprai_stacked/base/network/retro_fit_injection.dart';
import 'package:thuprai_stacked/ui/views/bookdetail/model/book_model.dart';
import 'package:thuprai_stacked/ui/views/bookdetail/repository/book_detail_repository.dart';
import 'package:thuprai_stacked/ui/views/cart/model/add_cart_request_model.dart';

class BookdetailrepositoryImplementationService
    implements BookDetailRepository {
  @override
  Future<BookModel?> getBookDetail(String bookRepositoryslug) async {
    try {
      final bookData = restClient.getBookData(bookRepositoryslug);
      debugPrint(
          'BookdetailrepositoryImplementationService:-$bookRepositoryslug');
      return bookData;
    } catch (e) {
      rethrow;
    }
  }

  /// to post product to cart
  ///
  @override
  Future<void>? addToCart(AddCartRequest addtoCart) {
    try {
      final response = restClient.addCart(addtoCart);
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
