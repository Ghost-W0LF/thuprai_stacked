import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:thuprai_stacked/app/app.locator.dart';

class BaseViewModelWrapper extends BaseViewModel {
  final _navigation = locator<NavigationService>();
}
