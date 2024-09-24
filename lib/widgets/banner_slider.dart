import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thuprai_stacked/base/utils/helpers.dart';
import 'package:thuprai_stacked/ui/common/app_colors.dart';
import 'package:thuprai_stacked/ui/common/app_image.dart';
import 'package:thuprai_stacked/widgets/rounded_image.dart';

/// Create a CarouselSlider, To show the FeturedList from the Api
///
class BannerSlider extends StatefulWidget {
  /// Create a CarouselSlider, To show the Fetured list from the Api
  ///
  /// BannerSlider uses [imageBuilder] and [listLength].
  ///  [imageBuilder] is used to build the image for each item in the list.
  /// getter=> /* imageUrl: widget.imageBuilder?.call(index) ?? AppImage.networkBook */
  ///
  /// setter=> /* imageBuilder: (index) => data.featured?[index].image ?? AppImage.networkBook, */
  const BannerSlider({
    super.key,
    required this.imageBuilder,
    required this.listLength,
  });

  /// Sets the length of the list to be shown on the slider,also will be the length of indicator
  final int listLength;

  /// Sets the string image to be shown in the slider. Use callback Function to get the index from the child ie.BannerSlider and pass the index to use in parent
  final String Function(int index)? imageBuilder;

  @override
  State<BannerSlider> createState() => _BannerSliderState();
}

class _BannerSliderState extends State<BannerSlider> {
  /// currennt index of the page being displayed. Initally set to 0
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    /// Image List generater
    final imageList = List.generate(
        widget.listLength,
        (index) => RoundedImage(
            imageUrl: widget.imageBuilder?.call(index) ??
                AppImage.networkBook)).toList();

    /// Sizedbox to hold all the child ie.CarouselSlider and animated container for the indicator
    return SizedBox(
      width: Helpers.getScreenWidth(context),
      child: Stack(
        children: [
          CarouselSlider(
              options: CarouselOptions(
                  autoPlay: true,
                  height: 180.0.h,
                  initialPage: 0,
                  onPageChanged: (index, _) {
                    setState(() {
                      currentIndex = index;
                    });
                  }),
              items: imageList),
          //
          /// Buttom indicator
          Positioned(
              bottom: 0,
              left: Helpers.getScreenWidth(context) * 0.4.w,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                      imageList.length,
                      (index) => Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 300),
                              height: 10,
                              width: index == currentIndex ? 20.w : 10.w,
                              decoration: BoxDecoration(
                                  color: index == currentIndex
                                      ? kcPrimaryColor
                                      : const Color.fromARGB(
                                          255, 104, 105, 109),
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                          ))))
        ],
      ),
    );
  }
}
