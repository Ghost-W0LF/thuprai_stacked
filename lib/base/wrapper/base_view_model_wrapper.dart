import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:thuprai_stacked/app/app.locator.dart';

abstract class BaseViewModelWrapper extends BaseViewModel {
  final snackbarService = locator<SnackbarService>();
  final snackBar = locator.get<SnackbarService>();

  final navigation = locator<NavigationService>();
}
