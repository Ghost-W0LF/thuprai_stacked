import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thuprai_stacked/base/utils/helpers.dart';
import 'package:thuprai_stacked/base/wrapper/shimmer_wrapper.dart';
import 'package:thuprai_stacked/ui/common/ui_helpers.dart';

class CartShimmer extends StatelessWidget {
  const CartShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return ShimmerWrapper(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: SingleChildScrollView(
        child: Column(
          children: [
            verticalSpaceMedium,
            verticalSpaceMassive,
            Container(
              color: Colors.white,
              height: 100.h,
              width: Helpers.getScreenWidth(context),
            ),
            verticalSpaceSmall,
            Container(
              color: Colors.white,
              height: 100.h,
              width: Helpers.getScreenWidth(context),
            ),
            verticalSpaceSmall,
            Container(
              color: Colors.white,
              height: 100.h,
              width: Helpers.getScreenWidth(context),
            ),
            verticalSpaceSmall,
            Container(
              color: Colors.white,
              height: 100.h,
              width: Helpers.getScreenWidth(context),
            ),
            verticalSpaceSmall,
            Container(
              color: Colors.white,
              height: 100.h,
              width: Helpers.getScreenWidth(context),
            ),
            verticalSpaceSmall,
            Container(
              color: Colors.white,
              height: 100.h,
              width: Helpers.getScreenWidth(context),
            ),
          ],
        ),
      ),
    );
  }
}
