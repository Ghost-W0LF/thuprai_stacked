import 'package:flutter/material.dart';
import 'package:thuprai_stacked/ui/common/app_colors.dart';

class PrimaryButton extends StatelessWidget {
  
  const PrimaryButton({
    super.key,
    this.text,
    this.onPressed,
    this.primaryColor = kcPrimaryColor,
    this.width = 20,
    this.height = 50,
  });
  final String? text;
  final VoidCallback? onPressed;
  final Color primaryColor;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        minimumSize: WidgetStateProperty.all(
          Size(MediaQuery.of(context).size.width * 0.8, 50),
        ),
        backgroundColor: WidgetStateProperty.all(primaryColor),
      ),
      onPressed: onPressed,
      child: Center(
        child: Text(
          text.toString(),
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
    );
  }
}
