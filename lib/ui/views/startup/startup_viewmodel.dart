import 'package:thuprai_stacked/app/app.router.dart';
import 'package:thuprai_stacked/base/wrapper/base_view_model_wrapper.dart';

class StartupViewModel extends BaseViewModelWrapper {
  // Place anything here that needs to happen before we get into the application
  Future runStartupLogic() async {
    await Future.delayed(const Duration(milliseconds: 500));
    String? savedToken = await tokenStorage.readToken();

    // This is where you can make decisions on where your app should navigate when
    // you have custom startup logic

    savedToken == null
        ? navigation.replaceWithLoginView()
        : navigation.replaceWithBottomNavigationView();
  }
}
