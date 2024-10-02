import 'package:flutter/material.dart';

class RoundedImage extends StatelessWidget {
  const RoundedImage(
      {super.key,
      this.borderRadius = 5,
      required this.imageUrl,
      this.height,
      this.width,
      this.color});
  final String imageUrl;
  final double borderRadius;
  final double? height, width;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(borderRadius)),
        child: Image(fit: BoxFit.fill, image: NetworkImage(imageUrl)),
      ),
    );
  }
}
