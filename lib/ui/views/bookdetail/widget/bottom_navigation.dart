import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thuprai_stacked/ui/common/key.dart';
import 'package:thuprai_stacked/base/utils/helpers.dart';
import 'package:thuprai_stacked/ui/views/bookdetail/bookdetail_viewmodel.dart';
import 'package:thuprai_stacked/widgets/primary_button.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key, this.viewModel});
  final BookdetailViewModel? viewModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Helpers.getScreenWidth(context),
      height: 70.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.all(10.0.r),
            child: PrimaryButton(
              key: Key(addTocart),
              height: 90.r,
              text: 'Add to cart',
              onPressedCallBack: viewModel?.addTocart,
            ),
          ),
        ],
      ),
    );
  }
}
