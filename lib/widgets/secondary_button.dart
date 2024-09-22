import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thuprai_stacked/ui/common/ui_helpers.dart';

/// create a button with icon and text
///
class SecondaryButton extends StatelessWidget {
  /// create a button with icon and text
  ///
  /// Create a button with [onPressed],[imageUrl],[text].
  const SecondaryButton(
      {super.key, this.onPressed, required this.imageUrl, required this.text});

  /// To set the title text of the button
  final String text;

  /// To set the image url of the button
  final String imageUrl;

  /// To set the on pressed function of the button
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0.r),
            ),
          ),
          fixedSize: WidgetStateProperty.all(
            Size(MediaQuery.of(context).size.width * 0.8.w, 50.h),
          ),
          backgroundColor:
              WidgetStateProperty.all(Colors.grey.withOpacity(0.3)),
        ),
        onPressed: onPressed,
        child: Row(mainAxisSize: MainAxisSize.min, children: [
          Padding(
            padding: EdgeInsets.only(right: 40.w),
            child: SizedBox(
              height: mediumSize.h,
              child: Image.asset(imageUrl),
            ),
          ),

          /// Button text
          Text(
            text,
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ]));
  }
}
