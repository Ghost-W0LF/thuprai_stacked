import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'package:thuprai_stacked/main.dart' as app;

import 'login_robot.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  late LoginRobot loginRobot;

  group('E2E - ', () {
    testWidgets('Unauthenticated Flow', (tester) async {
      await tester.pumpWidget(const app.MainApp());
      loginRobot = LoginRobot(tester);
      loginRobot.verify();
      await loginRobot.enterEmail();
      await loginRobot.enterPassword();
      await loginRobot.tapLoginButton();
      loginRobot.verifyError();
    });
  });
}
