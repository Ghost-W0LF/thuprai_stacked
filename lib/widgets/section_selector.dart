import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thuprai_stacked/ui/common/app_colors.dart';

class SectionSelector extends StatelessWidget {
  const SectionSelector({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 40.w,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 20,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.all(5.0.r),
              child: InkWell(
                onTap: () {
                  debugPrint("Pressed$index");
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: kcPrimaryColor.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0.r),
                      child: Text("Your Text"),
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
