import 'package:flutter/material.dart';
import 'package:thuprai_stacked/base/theme/custome_theme/app_text_theme.dart';

/// Create ListTile
class PrimaryListTile extends StatelessWidget {
  const PrimaryListTile(
      {super.key,
      required this.title,
      this.onPressed,
      this.tralingIconData,
      this.leadingIconData});

  /// sets ListTile title
  final String title;

  /// sets ListTile onPressed
  final VoidCallback? onPressed;

  /// sets ListTile trailing icon
  final IconData? tralingIconData;

  /// sets ListTile leading icon
  final IconData? leadingIconData;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPressed,
      leading: Icon(leadingIconData),
      title: Text(
        title,
        style: AppTextTheme.titleLarge(context),
      ),
      trailing: Icon(tralingIconData),
    );
  }
}
