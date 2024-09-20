import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:thuprai_stacked/app/app.bottomsheets.dart';
import 'package:thuprai_stacked/app/app.dialogs.dart';
import 'package:thuprai_stacked/app/app.locator.dart';
import 'package:thuprai_stacked/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:thuprai_stacked/base/theme/ktheme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  setupDialogUi();
  setupBottomSheetUi();
  runApp(
    DevicePreview(
      builder: (context) => const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(2532, 1170),
        minTextAdapt: true,
        builder: (_, child) {
          return MaterialApp(
            themeMode: ThemeMode.system,
            theme: KAppTheme.lightTheme,
            darkTheme: KAppTheme.darkTheme,
            initialRoute: Routes.startupView,
            onGenerateRoute: StackedRouter().onGenerateRoute,
            navigatorKey: StackedService.navigatorKey,
            navigatorObservers: [
              StackedService.routeObserver,
            ],
          );
        });
  }
}
