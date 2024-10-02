import 'package:flutter_test/flutter_test.dart';
import 'package:thuprai_stacked/app/app.locator.dart';
import 'package:thuprai_stacked/ui/views/cart/cart_viewmodel.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('CartViewModel Tests -', () {
    late CartViewModel model;
    setUp(() {
      registerServices();
      model = CartViewModel();
    });
    tearDown(() => locator.reset());
    test("Should increament the counter by 1 when addCounter is called", () {
      /// Arrange
      final initialCounterValue = model.increaseCounter;

      /// Act
      model.addCounter();
      // Assert
      expect(model.increaseCounter, initialCounterValue + 1);
    });
 
  });
}
