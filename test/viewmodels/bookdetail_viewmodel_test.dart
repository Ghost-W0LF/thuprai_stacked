import 'dart:math';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:thuprai_stacked/app/app.locator.dart';
import 'package:thuprai_stacked/ui/views/bookdetail/bookdetail_viewmodel.dart';
import 'package:thuprai_stacked/ui/views/bookdetail/model/book_model.dart';
import 'package:thuprai_stacked/ui/views/bookdetail/repository/bookdetailrepository_implementation_service.dart';
import 'package:thuprai_stacked/ui/views/cart/model/add_cart_request_model.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('BookdetailViewModel Tests -', () {
    late BookdetailViewModel viewModel;
    late BookdetailrepositoryImplementationService bookRepository;

    setUp(() {
      registerServices();
      viewModel = BookdetailViewModel();
      bookRepository = locator<BookdetailrepositoryImplementationService>();
    });
    tearDown(() {
      locator.reset(); // Ensure services are reset after each test.
    });

    test("Should return bookModel when getBookData is being called ", () async {
      /// Arrange
      final mockBookData = BookModel();
      viewModel.viewModelslug = 'validSlug';
      when(bookRepository.getBookDetail('validSlug'))
          .thenAnswer((_) async => mockBookData);

      /// Act
      final model = await viewModel.getBookData();

      /// Assert
      expect(model, isA<BookModel>());
      debugPrint("TestCompleated");
    });
    test("Should handel error and return null when getBookdetail fails",
        () async {
      // Arrage
      when(bookRepository.getBookDetail(''))
          .thenThrow(Exception('Error fetching home data'));

      /// Act
      final model = await viewModel.getBookData();

      /// Assert
      expect(model, isNull);
      debugPrint("TestCompleated");
    });
    test("should show snackbar when login is successful", () async {
      // Arrange
      final mockaddcartRequest = AddCartRequest();
      when(bookRepository.addToCart(mockaddcartRequest))
          .thenAnswer((_) async {});

      /// Act
      await viewModel.addTocart();
      // assert
      verify(viewModel.snackBar.showCustomSnackBar(
        message: "successfully added to cart",
        variant: 'success',
      )).called(1);
      debugPrint("TestCompleated");
    });
    test("should show error snackbar when add to cart is unsuccessful",
        () async {
      // Arrange
      final mockaddcartRequest = AddCartRequest();
      when(bookRepository.addToCart(mockaddcartRequest))
          .thenThrow(Exception('Error'));

      /// Act
      await viewModel.addTocart();

      /// Assert
      verify(viewModel.snackBar.showCustomSnackBar(
        message: "error",
        variant: 'error',
      )).called(1);
      debugPrint("TestCompleated");
    });
  });
}
