import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thuprai_stacked/base/utils/helpers.dart';
import 'package:thuprai_stacked/ui/common/app_colors.dart';

/// Creates a Primary Button
///

// ignore: must_be_immutable
class PrimaryButton extends StatelessWidget {
  /// Create a Primary Button
  ///
  /// Creates a Primary Button with [text],[onPressedCallBack],[primaryColor],[height],[width].
  /// [isATextButtton] is set to false by default, set to true to make a text button.
  PrimaryButton(
      {super.key,
      this.text,
      this.onPressedCallBack,
      this.primaryColor = kcPrimaryColor,
      this.width,
      this.height,
      this.isATextButtton = false,
      this.widgetKey});

  /// Set the child ie. Text of the buttom
  final String? text;

  /// To set the on pressed function of the button
  final VoidCallback? onPressedCallBack;

  /// To set the color of the button
  final Color primaryColor;

  /// To set the width of the button
  final double? height;

  /// To set the width of the button
  final double? width;

  /// To set the button as text button
  bool isATextButtton;

  /// sets the widget key
  final Key? widgetKey;
  @override
  Widget build(BuildContext context) {
    return isATextButtton
        ?

        ///TextButton
        TextButton(
            key: widgetKey,
            onPressed: onPressedCallBack,
            child: Center(
              child: Text(
                text.toString(),
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(color: kcPrimaryColor),
              ),
            ),
          )
        :

        ///ElevatedButton
        ElevatedButton(
            key: widgetKey,
            style: ButtonStyle(
              shape: WidgetStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.r),
              )),
              fixedSize: WidgetStateProperty.all(Size(
                  width ?? Helpers.getScreenWidth(context) * 0.8,
                  height ?? 50.h)),
              backgroundColor: WidgetStateProperty.all(primaryColor),
            ),
            onPressed: onPressedCallBack,
            child: Center(
              /// Text of ElevatedButton
              child: Text(
                text.toString(),
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: Colors.white),
              ),
            ),
          );
  }
}
