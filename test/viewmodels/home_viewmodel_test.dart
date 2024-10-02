import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:thuprai_stacked/app/app.locator.dart';
import 'package:thuprai_stacked/ui/views/home/home_viewmodel.dart';
import 'package:thuprai_stacked/ui/views/home/model/home_model.dart';
import 'package:thuprai_stacked/ui/views/home/repository/homerepositort_implementation_service.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('HomeViewModel Tests -', () {
    late HomeViewModel homeViewModel;
    late HomerepositortImplementationService homeRepository;

    setUp(() {
      registerServices(); // Register required services using mockito or a helper.
      homeRepository =
          locator<HomerepositortImplementationService>();
      homeViewModel = HomeViewModel(); 
    });

    test("should return HomeModel when getHomeData is called", () async {
      // Arrange
      final mockHomeData = HomeModel();
      when(homeRepository.getHomeData()).thenAnswer((_) async => mockHomeData);

      // Act
      final model = await homeViewModel.getHomeData();

      // Assert
      expect(model, isA<HomeModel>()); // Check if the response is a HomeModel
    });

    test('should handle error and return null when getHomeData fails',
        () async {
      // Arrange
      when(homeRepository.getHomeData())
          .thenThrow(Exception('Error fetching home data'));

      // Act
      final model = await homeViewModel.getHomeData();

      // Assert
      expect(model, isNull);
    });
    tearDown(() {
      locator.reset(); 
    });
  });
}
