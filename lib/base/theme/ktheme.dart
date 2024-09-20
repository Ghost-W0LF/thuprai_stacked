import 'package:flutter/material.dart';
import 'package:thuprai_stacked/base/theme/custome_theme/ktext_theme.dart';
import 'package:thuprai_stacked/ui/common/app_colors.dart';

class KAppTheme {
  KAppTheme._();
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: Colors.white,
    primaryColor: kcPrimaryColor,
    brightness: Brightness.light,
    textTheme: KTextTheme.lightTextTheme,

  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: const Color.fromARGB(255, 32, 32, 32),
    primaryColor: kcPrimaryColor,
    brightness: Brightness.dark,
    textTheme: KTextTheme.darkTextTheme,

  );
}
