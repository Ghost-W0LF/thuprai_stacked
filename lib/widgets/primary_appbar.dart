import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:thuprai_stacked/ui/common/app_size.dart';
import 'package:thuprai_stacked/ui/common/app_colors.dart';
import 'package:thuprai_stacked/ui/common/app_text.dart';

/// Create a custom App bar
///
class PrimaryAppbar extends StatelessWidget implements PreferredSizeWidget {
  /// Create a custom App bar
  ///
  /// Creates a App Bar with [leadingIconButton],[titleText],[rightIconButton],
  /// [leftIconButton],[onPressedCallBack],[leftActionOnPressedCallBack],
  /// [rightActionOnPressedCallBack].
  ///
  /// [leadingIconButton] is set to menu by default.
  /// [titleText] is set to AppBarTitle(thuprai) by Default.
  /// [rightIconButton] and [leftIconButton] is set to search as well as Shopping cart by Default.

  const PrimaryAppbar(
      {super.key,
      this.leadingIconButton = Icons.menu,
      this.titleText = AppText.appBarTitle,
      this.leftIconButton = Icons.search,
      this.rightIconButton = Icons.shopping_cart,
      this.onPressedCallBack,
      this.leftActionOnPressedCallBack,
      this.rightActionOnPressedCallBack,
      this.textStyle});

  /// Leading Icon Buttton [onPressed] Callback
  final VoidCallback? onPressedCallBack;

  /// Set Leading Icon Button
  final IconData? leadingIconButton;

  /// To set the title text of the app bar
  final String? titleText;

  /// Action
  /// To set Left Icon Button IconData
  final IconData? leftIconButton;

  /// Left Action Icon Buttton [onPressed] Callback
  final VoidCallback? leftActionOnPressedCallBack;

  /// To set Right/Second Icon Button IconData
  final IconData? rightIconButton;

  /// Left Action Icon Buttton [onPressed] Callback
  final VoidCallback? rightActionOnPressedCallBack;

  /// set the text style for the app bar title
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Center(
        child: Text(
          titleText.toString(),
          style: textStyle,
        ),
      ),
      actions: [
        IconButton(
            onPressed: leftActionOnPressedCallBack,
            icon: Icon(
              leftIconButton,
              color: kcPrimaryColor,
              size: KSize.iconlg,
            )),
        IconButton(
            onPressed: rightActionOnPressedCallBack,
            icon: Icon(
              rightIconButton,
              color: kcPrimaryColor,
              size: KSize.iconlg,
            ))
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight.h);
}
