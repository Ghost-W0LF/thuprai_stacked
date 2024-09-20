import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thuprai_stacked/ui/common/app_colors.dart';

class KTextTheme {
  KTextTheme._();

  static TextTheme lightTextTheme = TextTheme(
    //headline
    headlineLarge: const TextStyle().copyWith(
        fontSize: 32.0, fontWeight: FontWeight.bold, color: kcPrimaryColor),

    //Title
    titleLarge: const TextStyle().copyWith(
        fontSize: 16.0,
        fontWeight: FontWeight.w600,
        color: Colors.black.withOpacity(0.8)),

    // headlineMedium: const TextStyle().copyWith(
    //     fontSize: 24.0, fontWeight: FontWeight.w600, color: Colors.black),
    // headlineSmall: const TextStyle().copyWith(
    //     fontSize: 18.0, fontWeight: FontWeight.w600, color: Colors.black),

    // titleMedium: const TextStyle().copyWith(
    //     fontSize: 16.0, fontWeight: FontWeight.w500, color: Colors.black),
    // titleSmall: const TextStyle().copyWith(
    //     fontSize: 16.0, fontWeight: FontWeight.w400, color: Colors.black),
    // bodyLarge: const TextStyle().copyWith(
    //     fontSize: 14.0, fontWeight: FontWeight.w500, color: Colors.black),
    // bodyMedium: const TextStyle().copyWith(
    //     fontSize: 14.0, fontWeight: FontWeight.normal, color: Colors.black),
    // bodySmall: const TextStyle().copyWith(
    //     fontSize: 14.0,
    //     fontWeight: FontWeight.w500,
    //     color: Colors.black.withOpacity(0.5)),
    // labelLarge: const TextStyle().copyWith(
    //     fontSize: 12.0, fontWeight: FontWeight.normal, color: Colors.black),
    // labelMedium: const TextStyle().copyWith(
    //     fontSize: 12.0,
    //     fontWeight: FontWeight.normal,
    //     color: Colors.black.withOpacity(0.5)),
  );

  static TextTheme darkTextTheme = TextTheme(
    // headLine
    headlineLarge: const TextStyle().copyWith(
        fontSize: 32.0, fontWeight: FontWeight.bold, color: kcPrimaryColor),
    //Title
    titleLarge: const TextStyle().copyWith(
        fontSize: 16.0, fontWeight: FontWeight.w600, color: Colors.white),

    // headlineMedium: const TextStyle().copyWith(
    //     fontSize: 24.0, fontWeight: FontWeight.w600, color: Colors.white),
    // headlineSmall: const TextStyle().copyWith(
    //     fontSize: 18.0, fontWeight: FontWeight.w600, color: Colors.white),
    // titleLarge: const TextStyle().copyWith(
    //     fontSize: 16.0, fontWeight: FontWeight.w600, color: Colors.white),
    // titleMedium: const TextStyle().copyWith(
    //     fontSize: 16.0, fontWeight: FontWeight.w500, color: Colors.white),
    // titleSmall: const TextStyle().copyWith(
    //     fontSize: 16.0, fontWeight: FontWeight.w400, color: Colors.white),
    // bodyLarge: const TextStyle().copyWith(
    //     fontSize: 14.0, fontWeight: FontWeight.w500, color: Colors.white),
    // bodyMedium: const TextStyle().copyWith(
    //     fontSize: 14.0, fontWeight: FontWeight.normal, color: Colors.white),
    // bodySmall: const TextStyle().copyWith(
    //     fontSize: 14.0,
    //     fontWeight: FontWeight.w500,
    //     color: Colors.white.withOpacity(0.5)),
    // labelLarge: const TextStyle().copyWith(
    //     fontSize: 12.0, fontWeight: FontWeight.normal, color: Colors.white),
    // labelMedium: const TextStyle().copyWith(
    //     fontSize: 12.0,
    //     fontWeight: FontWeight.normal,
    //     color: Colors.white.withOpacity(0.5)),
  );
}
