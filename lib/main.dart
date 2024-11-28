import 'package:app_links/app_links.dart';
import 'package:flutter/material.dart';
import 'package:thuprai_stacked/app/app.bottomsheets.dart';
import 'package:thuprai_stacked/app/app.dialogs.dart';
import 'package:thuprai_stacked/app/app.locator.dart';
import 'package:thuprai_stacked/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:thuprai_stacked/base/theme/ktheme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thuprai_stacked/ui/views/bookdetail/bookdetail_view.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  setupDialogUi();
  setupBottomSheetUi();
  runApp(MainApp()
      // DevicePreview(
      //   builder: (context) => const MainApp(),
      // ),
      );
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  late AppLinks _appLinks;

  @override
  void initState() {
    super.initState();
    _initDeepLinking();
  }

  void _navigateToBookDetail(String slug) {
    final navigationService = locator<NavigationService>();
    navigationService.navigateTo(
      Routes.bookdetailView,
      arguments: BookdetailViewArguments(slugs: slug, bookTitle: slug),
    );
  }

  Future<void> _initDeepLinking() async {
    _appLinks = AppLinks();

    // Listen for incoming links
    _appLinks.uriLinkStream.listen((uri) {
      debugPrint('Deep link received: $uri');
      // Extract the slug parameter
      final String? slug =
          uri.pathSegments.isNotEmpty ? uri.pathSegments.last : null;

      if (slug != null) {
        debugPrint('Navigating to BookDetailView with slug: $slug');
        _navigateToBookDetail(slug);
      } else {
        debugPrint('No slug found in the URI');
      }
    }, onError: (err) {
      debugPrint('Error in URI listener: $err');
    });
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(428, 926),
        minTextAdapt: true,
        builder: (_, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
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
