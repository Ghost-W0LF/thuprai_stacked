import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:thuprai_stacked/app/app.locator.dart';
import 'package:thuprai_stacked/ui/views/cart/cart_viewmodel.dart';
import 'package:thuprai_stacked/ui/views/cart/model/get_cart_model.dart';
import 'package:thuprai_stacked/ui/views/cart/repository/cartrepositoryimplementation_service.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('CartViewModel Tests -', () {
    late CartViewModel viewModel;
    late CartrepositoryimplementationService cartRepository;
    
    setUp(() {
      registerServices();
      viewModel = CartViewModel();
      cartRepository = locator<CartrepositoryimplementationService>();
    });
    tearDown(() => locator.reset());
    test("Should increament the counter by 1 when addCounter is called", () {
      /// Arrange
      final initialCounterValue = viewModel.increaseCounter;

      /// Act
      viewModel.addCounter();
      // Assert
      expect(viewModel.increaseCounter, initialCounterValue + 1);
    });
    test("Should return GetCartModel when getCartData is called ", () async {
      // Arrange
      final mockCartRepository = GetCartModel();
      when(cartRepository.getCart())
          .thenAnswer((_) async => mockCartRepository);

      // Act
      final model = await viewModel.getCartData();
      // Assert
      expect(model, isA<GetCartModel>());
    });
    test("Should return null when getCartData call is a faliure ", () async {
      // Arrange
      when(cartRepository.getCart())
          .thenThrow(Exception('Error fetching cart data'));

      // Act
      final model = await viewModel.getCartData();
      // Assert
      expect(model, isNull);
    });

  });
}
