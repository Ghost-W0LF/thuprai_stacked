import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:thuprai_stacked/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:thuprai_stacked/base/theme/ktheme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'flavors.dart'; // Add this import for flavor integration

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(428, 926),
        minTextAdapt: true,
        builder: (_, child) {
          return MaterialApp(
            title: F.title, // Use the flavor-specific title
            themeMode: ThemeMode.system,
            theme: KAppTheme.lightTheme,
            darkTheme: KAppTheme.darkTheme,
            initialRoute: Routes.startupView,
            onGenerateRoute: StackedRouter().onGenerateRoute,
            navigatorKey: StackedService.navigatorKey,
            navigatorObservers: [
              StackedService.routeObserver,
            ],
            home: _flavorBanner(
              // Add flavor banner if in debug mode
              child: child ?? const SizedBox.shrink(),
              show: kDebugMode, // Only show flavor banner in debug mode
            ),
          );
        });
  }

  // Flavor Banner Widget
  Widget _flavorBanner({
    required Widget child,
    bool show = true,
  }) =>
      show
          ? Banner(
              location: BannerLocation.topStart,
              message: F.name, // Use flavor-specific name
              color: Colors.green.withOpacity(0.6),
              textStyle: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 12.0,
                  letterSpacing: 1.0),
              textDirection: TextDirection.ltr,
              child: child,
            )
          : child;
}
