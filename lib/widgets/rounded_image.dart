import 'package:flutter/material.dart';
import 'package:thuprai_stacked/ui/common/app_colors.dart';

class RoundedImage extends StatelessWidget {
  const RoundedImage({
    super.key,
    this.height,
    this.borderRadius = 5,
    this.width,
    required this.imageUrl,
  });
  final double? height, width;
  final String imageUrl;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: kcPrimaryColor),
            borderRadius: BorderRadius.circular(borderRadius)),
        child: Image(fit: BoxFit.contain, image: NetworkImage(imageUrl)),
      ),
    );
  }
}
