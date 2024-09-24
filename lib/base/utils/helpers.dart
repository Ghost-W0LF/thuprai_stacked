import 'package:flutter/material.dart';

class Helpers {
  static getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static getScreenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static headlineLarg(BuildContext context) {
    return Theme.of(context).textTheme.headlineLarge;
  }

  static titleLarge(BuildContext context) {
    return Theme.of(context).textTheme.titleLarge;
  }
}
