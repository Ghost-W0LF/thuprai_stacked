import 'package:flutter/material.dart';
import 'package:thuprai_stacked/widgets/primary_button.dart';
import 'package:thuprai_stacked/widgets/rounded_image.dart';

class SectionView extends StatelessWidget {
  const SectionView(
      {super.key, this.titleBuilder, this.imageUrlBuilder, this.dataLength});

  final String Function(int index)? titleBuilder;
  final String Function(int index)? imageUrlBuilder;
  final int? dataLength;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        height: 300,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "New Release",
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
                      width: 200,
                      height: 150,
                      // decoration:BoxDecoration(border: Border.all(color: Colors.red)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                              child: RoundedImage(
                                  imageUrl: imageUrlBuilder?.call(index) ??
                                      'no image')),
                          Text(titleBuilder?.call(index) ?? 'no text'),
                        ],
                      ),
                    );
                  }),
            ),
          ],
        ));
  }
}
