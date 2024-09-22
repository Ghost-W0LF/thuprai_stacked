import 'package:flutter/material.dart';

class RoundedImage extends StatelessWidget {
 const RoundedImage({
    super.key,
    this.height,
    this.borderRadius = 20,
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
        height: height,
        width: width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius)),
        child: Image(fit: BoxFit.contain, image: AssetImage(imageUrl)),
      ),
    );
  }
}
