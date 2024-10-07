import 'package:stacked/stacked.dart';
import 'package:thuprai_stacked/app/app.locator.dart';
import 'package:thuprai_stacked/ui/views/login/model/login_response_model.dart';
import 'package:thuprai_stacked/ui/views/login/repository/loginrepository_implementation_service.dart';

class ProfileViewModel extends BaseViewModel {
  final loginRepository = locator<LoginrepositoryImplementationService>();
  LoginResponseModel? loginResponse = LoginResponseModel();
}
