import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:mockito/mockito.dart';
import 'package:thuprai_stacked/app/app.locator.dart';
import 'package:thuprai_stacked/ui/views/bookdetail/model/book_model.dart';
import 'package:thuprai_stacked/ui/views/bookdetail/repository/bookdetailrepository_implementation_service.dart';
import 'package:thuprai_stacked/ui/views/cart/model/add_cart_request_model.dart';
import 'package:thuprai_stacked/ui/views/cart/model/get_cart_model.dart';
import 'package:thuprai_stacked/ui/views/cart/repository/cartrepositoryimplementation_service.dart';
import 'package:thuprai_stacked/ui/views/bookdetail/bookdetail_viewmodel.dart';
import 'package:stacked_services/stacked_services.dart';


class MockBookRepository extends Mock
    implements BookdetailrepositoryImplementationService {}

class MockCartRepository extends Mock
    implements CartrepositoryimplementationService {}

class MockSnackbarService extends Mock implements SnackbarService {}

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('Book Detail View Model Tests', () {
    late MockBookRepository mockBookRepository;
    late MockCartRepository mockCartRepository;
    late MockSnackbarService mockSnackbarService;

    setUp(() {
      mockBookRepository = MockBookRepository();
      mockCartRepository = MockCartRepository();
      mockSnackbarService = MockSnackbarService();

      // Register mocks
      locator.registerSingleton<BookdetailrepositoryImplementationService>(
          mockBookRepository);
      locator.registerSingleton<CartrepositoryimplementationService>(
          mockCartRepository);
      locator.registerSingleton<SnackbarService>(mockSnackbarService);
    });

    testWidgets('Verify book data fetch and cart addition',
        (WidgetTester tester) async {
      // Arrange
      const mockSlug = 'sample-book';
      final mockBookModel = BookModel(
        hardcover: {'product_id': 1},
      );

      final bookViewModel = BookdetailViewModel(viewModelslug: mockSlug);

      when(mockBookRepository.getBookDetail(mockSlug))
          .thenAnswer((_) async => mockBookModel);
      when(mockCartRepository.getCart())
          .thenAnswer((_) async => GetCartModel());

      // Act
      await bookViewModel.initialise();

      // Assert book data fetched
      expect(bookViewModel.bookModel?.englishTitle, equals('Sample Book'));
      expect(bookViewModel.isBusy, isFalse);

      // Act - Simulate adding to cart
      when(mockBookRepository.addToCart(AddCartRequest())).thenAnswer((_) async => true);
      final result = await bookViewModel.addTocart();

      // Assert - Cart addition successful
      verify(mockSnackbarService.showCustomSnackBar(
        message: "successfully added to cart",
        variant: 'success',
      )).called(1);
      expect(result, 'success');
    });

    testWidgets('Verify Snackbar shows on error when adding to cart',
        (WidgetTester tester) async {
      // Arrange
      const mockSlug = 'sample-book';
      final mockBookModel = BookModel(
        englishTitle: 'Sample Book',
        hardcover: {'product_id': 1},
      );
      final bookViewModel = BookdetailViewModel(viewModelslug: mockSlug);

      when(mockBookRepository.getBookDetail(mockSlug))
          .thenAnswer((_) async => mockBookModel);
      when(mockCartRepository.getCart())
          .thenAnswer((_) async => GetCartModel());

      // Act
      await bookViewModel.initialise();

      // Simulate an error during add to cart
      when(mockBookRepository.addToCart(AddCartRequest())).thenThrow(Exception());
      final result = await bookViewModel.addTocart();

      // Assert - Error snackbar shown
      verify(mockSnackbarService.showCustomSnackBar(
        message: "Failed to add",
        variant: 'error',
      )).called(1);
      expect(result, contains('Error'));
    });
  });
}
