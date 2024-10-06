import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:thuprai_stacked/base/keys/key.dart';
import 'package:thuprai_stacked/ui/views/home/home_view.dart';

class LoginRobot {
  final WidgetTester tester;
  LoginRobot(this.tester);
  void verify() {
    final loginView = find.byKey(Key(loginViewKey));
    expect(loginView, findsOneWidget);
  }

  Future<void> enterEmail(String email) async {
    final emailField = find.byKey(Key(loginEmail));
    expect(emailField, findsOneWidget);
    await tester.enterText(emailField, email);
    debugPrint("Test one complete");
    await tester.pump();
  }

  Future<void> enterPassword(String password) async {
    final passwordField = find.byKey(Key(loginPassword));
    expect(passwordField, findsOneWidget);
    await tester.enterText(passwordField, password);
    debugPrint("Test two complete");
    await tester.pump();
  }

  Future<void> tapLoginButton() async {
    final loginButtonk = find.byKey(Key(loginButton));
    expect(loginButtonk, findsOneWidget);
    await tester.tap(loginButtonk);
    debugPrint("Test three complete");
  }

  Future<void> verifyNav() async {
    await tester.pumpAndSettle();
    final loginView = find.byKey(Key(loginViewKey));
    expect(loginView, findsAtLeast(1));
  }

  void verifyHomeScreen() async {
    expect(HomeView(), findsOneWidget);
    await tester.pumpAndSettle();
  }
}
