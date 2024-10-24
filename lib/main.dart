import 'dart:async';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:thuprai_stacked/app/app.bottomsheets.dart';
import 'package:thuprai_stacked/app/app.dialogs.dart';
import 'package:thuprai_stacked/app/app.locator.dart';
import 'app.dart';

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
