import 'package:flutter/material.dart';

class RoundedImage extends StatelessWidget {
  const RoundedImage({
    super.key,
    this.borderRadius = 5,
    required this.imageUrl,
    this.height,
    this.width,
  });
  final String imageUrl;
  final double borderRadius;
  final double? height, width;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: Container(
        height: height,
        width: width,
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(borderRadius)),
        child: Image(fit: BoxFit.cover, image: NetworkImage(imageUrl)),
      ),
    );
  }
}
