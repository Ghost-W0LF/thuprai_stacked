import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

///create a button with icon and text
///
class SecondaryButton extends StatelessWidget {
  const SecondaryButton(
      {super.key, this.onPressed, required this.imageUrl, required this.text});
  final String text;
  final String imageUrl;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          minimumSize: WidgetStateProperty.all(
            Size(MediaQuery.of(context).size.width * 0.5.r, 50),
          ),
          backgroundColor:
              WidgetStateProperty.all(Colors.grey.withOpacity(0.5)),
        ),
        onPressed: onPressed,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          SizedBox(
            height: 30,
            child: Image.asset(imageUrl),
          ),
          Text(
            text,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ]));
  }
}
