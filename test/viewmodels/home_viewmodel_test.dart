import 'package:flutter_test/flutter_test.dart';
import 'package:thuprai_stacked/app/app.locator.dart';
import 'package:thuprai_stacked/ui/views/home/home_viewmodel.dart';

import '../helpers/test_helpers.dart';
import '../helpers/test_helpers.mocks.dart';

void main() {
  group('HomeViewModel Tests -', () {
    late HomeViewModel _viewModel;
    late MockHomerepositortImplementationService _mockService;

    setUp(() {
      registerServices();
      _viewModel = HomeViewModel();
      _mockService = MockHomerepositortImplementationService();
    });
    tearDown(() => locator.reset());
    test('Test Home View Model', () {
      // Arrange
    });
  });
}
