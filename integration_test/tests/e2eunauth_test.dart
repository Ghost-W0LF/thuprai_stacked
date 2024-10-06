import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:thuprai_stacked/app/app.locator.dart';
import 'package:thuprai_stacked/main.dart' as app;

import '../login_robot.dart';

void main() async {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  NavigationService();

  late LoginRobot loginRobot;

  group('E2E - ', () {
    testWidgets('Unauthenticated Flow ', (tester) async {
      await tester.pumpWidget(const app.MainApp());
      loginRobot = LoginRobot(tester);
      await tester.pumpAndSettle();
      loginRobot.verify();
      await loginRobot.enterEmail("Abhinab1221@gmail.com");
      await loginRobot.enterPassword("akkhatri123");
      await loginRobot.tapLoginButton();
      await tester.pumpAndSettle();
      loginRobot.verifyBadRequest();
    });
    testWidgets('Authenticated Flow to cart', (tester) async {
      await tester.pumpWidget(const app.MainApp());
      loginRobot = LoginRobot(tester);
      await tester.pumpAndSettle();
      loginRobot.verify();
      await loginRobot.enterEmail("Abhinab1221@gmail.com");
      await loginRobot.enterPassword("akkhatri");
      await loginRobot.tapLoginButton();
      await tester.pumpAndSettle();
      await tester.pumpAndSettle();
      loginRobot.verifyAppbar();
      await loginRobot.tapCartIcon();
    });
    testWidgets('Authenticated Flow to bookdetailView', (tester) async {
      await tester.pumpWidget(const app.MainApp());
      loginRobot = LoginRobot(tester);
      await tester.pumpAndSettle();
      loginRobot.verify();
      await loginRobot.enterEmail("Abhinab1221@gmail.com");
      await loginRobot.enterPassword("akkhatri");
      await loginRobot.tapLoginButton();
      await tester.pumpAndSettle();
      loginRobot.verifyAppbar();
      await loginRobot.tabBook();
      await loginRobot.tapAddTocart();
      loginRobot.verifySnackBar();
      await Future.delayed(Duration(seconds: 3));
      await loginRobot.tapCartIcon();
    });
  });
}
