import 'package:thuprai_stacked/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:thuprai_stacked/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:thuprai_stacked/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:thuprai_stacked/ui/views/uikit/uikit_view.dart';
import 'package:thuprai_stacked/ui/views/login/login_view.dart';
import 'package:thuprai_stacked/ui/views/login/service/login_service.dart';
import 'package:thuprai_stacked/services/dio_instance_service.dart';
import 'package:thuprai_stacked/ui/views/login/repository/loginrepository_implementation_service.dart';
import 'package:thuprai_stacked/services/securestorage_service.dart';
import 'package:thuprai_stacked/ui/views/home/home_view.dart';
import 'package:thuprai_stacked/ui/views/home/service/home_service.dart';
import 'package:thuprai_stacked/ui/views/home/repository/homerepositort_implementation_service.dart';
import 'package:thuprai_stacked/ui/views/bookdetail/bookdetail_view.dart';
import 'package:thuprai_stacked/ui/views/bookdetail/repository/bookdetailrepository_implementation_service.dart';
import 'package:thuprai_stacked/ui/views/cart/cart_view.dart';
import 'package:thuprai_stacked/ui/views/cart/repository/cartrepositoryimplementation_service.dart';
import 'package:thuprai_stacked/ui/views/bottom_navigation/bottom_navigation_view.dart';
import 'package:thuprai_stacked/ui/views/signup/signup_view.dart';
import 'package:thuprai_stacked/ui/views/mylibrary/mylibrary_view.dart';
import 'package:thuprai_stacked/ui/views/signup/repository/signup_repository_implementation_service.dart';
import 'package:thuprai_stacked/ui/views/profile/profile_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: StartupView),
    MaterialRoute(page: UikitView),
    MaterialRoute(page: LoginView),
    MaterialRoute(page: HomeView),
    MaterialRoute(page: BookdetailView),
    MaterialRoute(page: CartView),
    MaterialRoute(page: BottomNavigationView),
    MaterialRoute(page: SignupView),
    MaterialRoute(page: MylibraryView),
    MaterialRoute(page: ProfileView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: LoginService),
    LazySingleton(classType: DioInstanceService),
    LazySingleton(classType: LoginrepositoryImplementationService),
    LazySingleton(classType: SecurestorageService),
    LazySingleton(classType: HomeService),
    LazySingleton(classType: HomerepositortImplementationService),
    LazySingleton(classType: BookdetailrepositoryImplementationService),
    LazySingleton(classType: CartrepositoryimplementationService),
    LazySingleton(classType: SignupRepositoryImplementationService),
// @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
