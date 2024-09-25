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
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: StartupView),
    MaterialRoute(page: UikitView),
    MaterialRoute(page: LoginView),
    MaterialRoute(page: HomeView),
    MaterialRoute(page: BookdetailView),
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
