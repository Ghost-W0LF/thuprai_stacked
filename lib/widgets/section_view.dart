import 'package:flutter/material.dart';
import 'package:thuprai_stacked/widgets/primary_button.dart';
import 'package:thuprai_stacked/widgets/rounded_image.dart';

class SectionView extends StatelessWidget {
  const SectionView({
    super.key,
  });

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
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return const SizedBox(
                      width: 200,
                      height: 150,
                      // decoration:BoxDecoration(border: Border.all(color: Colors.red)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                              child: RoundedImage(
                                  imageUrl:
                                      'https://media.thuprai.com/__sized__/front_covers/Ijoriya_by_subin_bhattarai_-f-thumbnail-175x255-70.jpg')),
                          Text("Book Title"),
                        ],
                      ),
                    );
                  }),
            ),
          ],
        ));
  }
}
