import 'package:flutter/material.dart';
import 'package:thuprai_stacked/ui/common/app_colors.dart';

// ignore: must_be_immutable
class PrimaryButton extends StatelessWidget {
  PrimaryButton({
    super.key,
    this.text,
    this.onPressedCallBack,
    this.primaryColor = kcPrimaryColor,
    this.width = 20,
    this.height = 50,
    this.isATextButtton = false,
  });
  final String? text;
  final VoidCallback? onPressedCallBack;
  final Color primaryColor;
  final double height;
  final double width;
  bool isATextButtton;

  @override
  Widget build(BuildContext context) {
    return isATextButtton
        ?

        ///TextButton
        TextButton(
            onPressed: onPressedCallBack,
            child: Center(
              child: Text(
                text.toString(),
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(color: kcPrimaryColor),
              ),
            ),
          )
        :

        ///ElevatedButton
        ElevatedButton(
            style: ButtonStyle(
              minimumSize: WidgetStateProperty.all(
                Size(MediaQuery.of(context).size.width * 0.8, 50),
              ),
              backgroundColor: WidgetStateProperty.all(primaryColor),
            ),
            onPressed: onPressedCallBack,
            child: Center(
              child: Text(
                text.toString(),
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
          );
  }
}
