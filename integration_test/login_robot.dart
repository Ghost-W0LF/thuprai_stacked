import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:thuprai_stacked/base/keys/key.dart';

class LoginRobot {
  final WidgetTester tester;
  LoginRobot(this.tester);
  void verify() {
    final loginView = find.byKey(Key(loginViewKey));
    expect(loginView, findsOneWidget);
  }

  Future<void> enterEmail() async {
    final emailField = find.byKey(Key(loginEmail));
    expect(emailField, findsOneWidget);
    await tester.enterText(emailField, "abhinab1221@gmail.com");
    await tester.pump();
  }

  Future<void> enterPassword() async {
    final passwordField = find.byKey(Key(loginPassword));
    expect(passwordField, findsOneWidget);
    await tester.enterText(passwordField, "1234232343");
    await tester.pump();
  }

  Future<void> tapLoginButton() async {
    final loginButtonk = find.byKey(Key(loginButton));
    expect(loginButtonk, findsOneWidget);
    await tester.tap(loginButtonk);
    await tester.pump();
  }

  void verifyError() {
    final snackBar = find.byKey(Key(''));
    expect(snackBar, findsOneWidget);
  }
}
