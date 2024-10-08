import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:thuprai_stacked/app/app.locator.dart';
import 'package:thuprai_stacked/services/securestorage_service.dart';
import 'package:thuprai_stacked/ui/views/allbook/repository/all_book_repository_implemantation.dart';
import 'package:thuprai_stacked/ui/views/bookdetail/repository/bookdetailrepository_implementation_service.dart';
import 'package:thuprai_stacked/ui/views/cart/repository/cartrepositoryimplementation_service.dart';

abstract class BaseViewModelWrapper extends BaseViewModel {
  final snackbarService = locator<SnackbarService>();
  final snackBar = locator.get<SnackbarService>();
  final navigation = locator<NavigationService>();
  final tokenStorage = locator<SecurestorageService>();

  final bookRepository =
      locator.get<BookdetailrepositoryImplementationService>();
  final cartRepository = locator<CartrepositoryimplementationService>();

  final cartRepositort = locator<CartrepositoryimplementationService>();
  final allBookRepository = locator<AllBookRepositoryImplemantation>();
}
