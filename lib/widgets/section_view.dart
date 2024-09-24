import 'package:flutter/material.dart';
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
      this.onPressed});

  /// Sets the string title to be shown under the book. Use callback Function to get the index from the child ie.Sectionview and pass the index to use by the parent
  final String Function(int index) titleBuilder;

  /// Sets the string network image to be shown as the book. Use callback Function to get the index from the child ie.Sectionview and pass the index to use by the parent
  final String Function(int index) imageUrlBuilder;

  /// Sets the number of books to be shown in the section
  final int? dataLength;

  /// Sets the title of the section
  final String sectionTitleText;

  /// call back onTap method on the container .ie(book)
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),

        /// height of the whole .ie parent container
        height: 280,
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
                  onPressedCallBack: () {},
                )
              ],
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: dataLength,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      /// height of the
                      width: 150,
                      height: 100,
                      // decoration:BoxDecoration(border: Border.all(color: Colors.red)),
                      child: GestureDetector(
                        onTap: onPressed,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                                child: RoundedImage(
                                    imageUrl: imageUrlBuilder.call(index))),
                            Text(titleBuilder.call(index)),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ));
  }
}
