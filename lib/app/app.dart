import 'package:thuprai_stacked/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:thuprai_stacked/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:thuprai_stacked/ui/views/home/home_view.dart';
import 'package:thuprai_stacked/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:thuprai_stacked/ui/views/uikit/uikit_view.dart';
import 'package:thuprai_stacked/ui/views/login/login_view.dart';
import 'package:thuprai_stacked/services/dio_service.dart';
import 'package:thuprai_stacked/services/login_service.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: UikitView),
    MaterialRoute(page: LoginView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: DioService),
    LazySingleton(classType: LoginService),
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
