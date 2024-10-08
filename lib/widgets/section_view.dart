import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thuprai_stacked/widgets/primary_button.dart';
import 'package:thuprai_stacked/widgets/rounded_image.dart';

class SectionView extends StatelessWidget {
  /// creates a Widget(Section view) with title text and books image and their title
  ///
  ///  [imageUrlBuilder],[titleBuilder],[dataLength],[sectionTitleText] is the used in the  widget
  ///
  const SectionView(
      {super.key,
      required this.titleBuilder,
      required this.imageUrlBuilder,
      required this.dataLength,
      required this.sectionTitleText,
      this.onPressedBuilder,
      this.onPressedCallBack});

  /// Sets the string title to be shown under the book. Use callback Function to get the index from the child ie.Sectionview and pass the index to use by the parent
  final String Function(int index) titleBuilder;

  /// Sets the string network image to be shown as the book. Use callback Function to get the index from the child ie.Sectionview and pass the index to use by the parent
  final String Function(int index) imageUrlBuilder;

  final VoidCallback? Function(int index)? onPressedBuilder;

  /// Sets the number of books to be shown in the section
  final int? dataLength;

  /// Sets the title of the section
  final String sectionTitleText;

  /// call back onTap method on the container .ie(book)
  final VoidCallback? onPressedCallBack;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10.r),

        /// height of the whole .ie parent container
        height: 250.h,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  sectionTitleText,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                PrimaryButton(
                  isATextButtton: true,
                  text: "View All",
                  onPressedCallBack: onPressedCallBack,
                )
              ],
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: dataLength,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.all(8.0.r),
                      child: SizedBox(
                        /// height of the
                        width: 100.w,
                        height: 50.h,
                        // decoration:BoxDecoration(border: Border.all(color: Colors.red)),
                        child: GestureDetector(
                          onTap: onPressedBuilder?.call(index),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                  child: RoundedImage(
                                      key: Key('RoundedImage$index'),
                                      height: 200.h,
                                      width: 130.w,
                                      imageUrl: imageUrlBuilder.call(index))),
                              Text(titleBuilder.call(index)),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ));
  }
}
