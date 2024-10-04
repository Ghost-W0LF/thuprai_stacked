import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:thuprai_stacked/app/app.locator.dart';
import 'package:thuprai_stacked/main.dart' as app;
import 'package:thuprai_stacked/ui/views/home/home_view.dart';
import '../login_robot.dart';

void main() async {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  NavigationService();

  late LoginRobot loginRobot;

  group('E2E - ', () {
    testWidgets('Authenticated Flow', (tester) async {
      await tester.pumpWidget(const app.MainApp());
      loginRobot = LoginRobot(tester);
      await tester.pumpAndSettle();
      loginRobot.verify();
      await loginRobot.enterEmail("Abhinab1221@gmail.com");
      await loginRobot.enterPassword("akkhatri");
      await loginRobot.tapLoginButton();
      await tester.pumpAndSettle();
      expect(HomeView(), findsOneWidget);
    });
    testWidgets('Unauthenticated Flow', (tester) async {
      await tester.pumpWidget(const app.MainApp());
      loginRobot = LoginRobot(tester);
      loginRobot.verify();
      await loginRobot.enterEmail("");
      await loginRobot.enterPassword("123455677");
      await loginRobot.tapLoginButton();
    });
  });
}
