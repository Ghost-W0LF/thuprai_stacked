import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:thuprai_stacked/app/app.locator.dart';

abstract class BaseViewmodelWrapper extends BaseViewModel {
  final navigationService = locator<NavigationService>();
  final dialogService = locator<DialogService>();
  final bottomSheetService = locator<BottomSheetService>();



    
  }

