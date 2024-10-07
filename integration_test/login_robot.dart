import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:thuprai_stacked/ui/common/key.dart';

class LoginRobot {
  final WidgetTester tester;
  LoginRobot(this.tester);
  void verify() {
    final loginView = find.byKey(Key(loginViewKey));
    expect(loginView, findsOneWidget);
  }

  void verifyBadRequest() {
    final badSnackBar = find.byType(Overlay);
    expect(badSnackBar, findsOneWidget);
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
    await tester.pumpAndSettle();
  }

  void verifyAppbar() {
    final appBar = find.byKey(Key(appBarKey));
    expect(appBar, findsOneWidget);
    debugPrint("five complete");
  }

  Future<void> tapCartIcon() async {
    final cartIcon = find.byIcon(Icons.shopping_cart);
    expect(cartIcon, findsOneWidget);
    await tester.tap(cartIcon);
    debugPrint("Test six complete");
    await tester.pumpAndSettle();
  }

  Future<void> tabBook() async {
    final book = find.byType(SingleChildScrollView);
    expect(book, findsOneWidget);
    await tester.tap(
      book,
    );
    debugPrint("Test six complete");
    await tester.pumpAndSettle();
  }

  Future<void> tapAddTocart() async {
    final addCart = find.byKey(Key(addTocart));
    expect(addCart, findsOneWidget);
    await tester.tap(
      addCart,
    );
    debugPrint("Test six complete");
    await tester.pumpAndSettle();
  }

  void verifySnackBar() {
    final snackBar = find.byType(Overlay);
    expect(snackBar, findsOneWidget);
  }
}
