import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import 'package:thuprai_stacked/base/utils/helpers.dart';

class LoginShimmer extends StatelessWidget {
  const LoginShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                color: Colors.white,
                height: 400.h,
                width: Helpers.getScreenWidth(context) * 0.8.w,
              ),
            ),
            SizedBox(
              height: 200.h,
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 20, // Adjust the count based on your needs
                itemBuilder: (context, index) {
                  return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 200.h,
                        width: 150.w,
                        color: Colors.white,
                      ));
                },
              ),
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 5, // Adjust the count based on your needs
                itemBuilder: (context, index) {
                  return Padding(
                      padding: EdgeInsets.all(10.0.r),
                      child: Container(
                        height: 200.h,
                        width: 130.w,
                        color: Colors.white,
                      ));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
