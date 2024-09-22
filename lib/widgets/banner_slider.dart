import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:thuprai_stacked/ui/common/app_colors.dart';
import 'package:thuprai_stacked/ui/common/app_image.dart';
import 'package:thuprai_stacked/widgets/rounded_image.dart';

class BannerSlider extends StatefulWidget {
  const BannerSlider({super.key});

  @override
  State<BannerSlider> createState() => _BannerSliderState();
}

class _BannerSliderState extends State<BannerSlider> {
  int currentIndex = 0;

  final List<Widget> itemsList = [
    const RoundedImage(imageUrl: AppImage.facebook),
    const RoundedImage(imageUrl: AppImage.google),
    const RoundedImage(imageUrl: AppImage.apple),
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
                height: 250.0,
                initialPage: 0,
                viewportFraction: 1,
                onPageChanged: (index, _) {
                  setState(() {
                    currentIndex = index;
                  });
                }),
            items: itemsList,
          ),
          Positioned(
              bottom: 0,
              left: width * 0.4,
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
                              width: index == currentIndex ? 20 : 10,
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
