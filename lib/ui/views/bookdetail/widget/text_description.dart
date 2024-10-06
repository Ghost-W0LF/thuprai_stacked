import 'package:flutter/material.dart';
import 'package:thuprai_stacked/base/utils/helpers.dart';
import 'package:thuprai_stacked/ui/views/bookdetail/model/book_model.dart';

class TextDescription extends StatelessWidget {
  const TextDescription({
    super.key,
    required this.data,
  });

  final BookModel? data;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: data?.backCoverText != null
          ? SizedBox(
              width: Helpers.getScreenWidth(context),
              child: Text(
                textAlign: TextAlign.left,
                data?.backCoverText ?? "No Text here",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            )
          : const SizedBox(),
    );
  }
}
