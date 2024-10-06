
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thuprai_stacked/base/utils/helpers.dart';
import 'package:thuprai_stacked/ui/common/app_colors.dart';
import 'package:thuprai_stacked/ui/common/ui_helpers.dart';
import 'package:thuprai_stacked/ui/views/cart/model/get_cart_model.dart';
import 'package:thuprai_stacked/widgets/primary_button.dart';

class BottomSection extends StatelessWidget {
  const BottomSection({
    super.key,
    required this.data,
  });

  final GetCartModel? data;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 5.h,
      child: Container(
        width: Helpers.getScreenWidth(context),
        decoration:
            BoxDecoration(color: kcPrimaryColor.withOpacity(0.2)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
                "  Subtotal Ammount:-      Rs.${data?.totalExclTaxExclDiscounts}",
                style: Theme.of(context).textTheme.titleMedium),
            verticalSpaceMedium,
            Text(
              "     Total Ammount:-      R.s${data?.totalInclTax}",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            verticalSpaceMedium,
            PrimaryButton(
              onPressedCallBack: () {},
              text: "Check Out",
            )
          ],
        ),
      ),
    );
  }
}
