import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thuprai_stacked/ui/common/app_colors.dart';

class AppTextTheme {
  AppTextTheme._();

  static TextTheme lightTextTheme = TextTheme(
    //headline
    headlineLarge: const TextStyle().copyWith(
        fontSize: 32.0.sp, fontWeight: FontWeight.bold, color: kcPrimaryColor),
    headlineMedium: const TextStyle().copyWith(
        fontSize: 24.0.sp,
        fontWeight: FontWeight.bold,
        color: kcPrimaryTextColor),
    headlineSmall: const TextStyle().copyWith(
        fontSize: 18.0.sp,
        fontWeight: FontWeight.bold,
        color: kcPrimaryTextColor),

    //Title
    titleLarge: const TextStyle().copyWith(
        fontSize: 16.0.sp,
        fontWeight: FontWeight.w600,
        color: kcPrimaryTextColor),
    titleMedium: const TextStyle().copyWith(
        fontSize: 14.0.sp,
        fontWeight: FontWeight.w600,
        color: kcPrimaryTextColor),
    titleSmall: const TextStyle().copyWith(
        fontSize: 16.0.sp,
        fontWeight: FontWeight.w400,
        color: kcPrimaryTextColor),
    // body

    bodyLarge: const TextStyle().copyWith(
        fontSize: 14.0.sp,
        fontWeight: FontWeight.w500,
        color: kcPrimaryTextColor),
    bodyMedium: const TextStyle().copyWith(
        fontSize: 14.0.sp,
        fontWeight: FontWeight.normal,
        color: kcPrimaryTextColor),
    bodySmall: const TextStyle().copyWith(
        fontSize: 14.0.sp,
        fontWeight: FontWeight.w500,
        color: kcPrimaryTextColor.withOpacity(0.5)),

    //button
    labelLarge: const TextStyle().copyWith(
        fontSize: 12.0.sp,
        fontWeight: FontWeight.normal,
        color: kcPrimaryTextColor),
    labelMedium: const TextStyle().copyWith(
        fontSize: 12.0.sp,
        fontWeight: FontWeight.normal,
        color: kcPrimaryTextColor.withOpacity(0.5)),
  );

  static TextTheme darkTextTheme = TextTheme(
    // headLine
    headlineLarge: const TextStyle().copyWith(
        fontSize: 32.0.sp, fontWeight: FontWeight.bold, color: kcPrimaryColor),
    headlineMedium: const TextStyle().copyWith(
        fontSize: 24.0.sp, fontWeight: FontWeight.bold, color: Colors.white),
    //Title
    titleLarge: const TextStyle().copyWith(
        fontSize: 16.0.sp, fontWeight: FontWeight.w600, color: Colors.white),

    //button

    labelLarge: const TextStyle().copyWith(
        fontSize: 12.0.sp, fontWeight: FontWeight.normal, color: Colors.white),
  );

  /// Getter function for text theme
  ///     //headline
  static headlineLarge(BuildContext context) {
    return Theme.of(context).textTheme.headlineLarge;
  }

  static headlineMedium(BuildContext context) {
    return Theme.of(context).textTheme.headlineMedium;
  }

  static headlineSmall(BuildContext context) {
    return Theme.of(context).textTheme.headlineSmall;
  }

  //Title
  static titleLarge(BuildContext context) {
    return Theme.of(context).textTheme.titleLarge;
  }

  static titleMedium(BuildContext context) {
    return Theme.of(context).textTheme.titleMedium;
  }

  static titleSmall(BuildContext context) {
    return Theme.of(context).textTheme.titleSmall;
  }

  // Body
  static bodyLarge(BuildContext context) {
    return Theme.of(context).textTheme.titleLarge;
  }

  static bodyMedium(BuildContext context) {
    return Theme.of(context).textTheme.bodyMedium;
  }

  static bodySmall(BuildContext context) {
    return Theme.of(context).textTheme.bodySmall;
  }

  // lable
  static labelLarge(BuildContext context) {
    return Theme.of(context).textTheme.labelLarge;
  }

  static labelMedium(BuildContext context) {
    return Theme.of(context).textTheme.labelMedium;
  }
}
