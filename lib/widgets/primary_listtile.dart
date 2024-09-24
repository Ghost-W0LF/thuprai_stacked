import 'package:flutter/material.dart';
import 'package:thuprai_stacked/base/utils/helpers.dart';

class PrimaryListTile extends StatelessWidget {
  const PrimaryListTile({super.key, required this.title, this.onPressed});
  final String title;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPressed,
      title: Text(
        title,
        style: Helpers.titleLarge(context),
      ),
      trailing: const Icon(Icons.arrow_forward_ios),
    );
  }
}
