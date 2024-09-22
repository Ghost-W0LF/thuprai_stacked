import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thuprai_stacked/ui/common/app_colors.dart';
import 'package:thuprai_stacked/widgets/rounded_image.dart';

class BannerSlider extends StatefulWidget {
  const BannerSlider({super.key});

  @override
  State<BannerSlider> createState() => _BannerSliderState();
}

class _BannerSliderState extends State<BannerSlider> {
  int currentIndex = 0;

  final List<Widget> itemsList = [
    const RoundedImage(
        imageUrl:
            'https://media.thuprai.com/__sized__/featured_images/chhal-bato-crop-c0-5__0-5-1200x630-70.jpg'),
    const RoundedImage(
        imageUrl:
            'https://media.thuprai.com/__sized__/featured/1200-by-630_4_mVGBjSP-crop-c0-5__0-5-1200x630-70.jpg'),
    const RoundedImage(
        imageUrl:
            'https://media.thuprai.com/__sized__/front_covers/ramesh-bikal-samagra-upanyaskhanda-thumbnail-175x255-70.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width,
      child: Stack(
        children: [
          CarouselSlider(
            options: CarouselOptions(
                autoPlay: true,
                height: 150.0.h,
                initialPage: 0,
                onPageChanged: (index, _) {
                  setState(() {
                    currentIndex = index;
                  });
                }),
            items: itemsList,
          ),
          //
          //
          Positioned(
              bottom: 0,
              left: width * 0.4.w,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                      itemsList.length,
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
