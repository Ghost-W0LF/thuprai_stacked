import 'package:flutter/material.dart';
import 'package:thuprai_stacked/ui/views/home/home_viewmodel.dart';
import 'package:thuprai_stacked/widgets/primary_button.dart';
import 'package:thuprai_stacked/widgets/rounded_image.dart';

class SectionView extends StatelessWidget {
  const SectionView({super.key, this.vm, this.title});
  final HomeViewModel? vm;
  final String? title;

  @override
  Widget build(BuildContext context) {
    final data = vm?.featchedDataa;
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
                  itemCount: data?.newReleases?.length,
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
                                  imageUrl:
                                      '${data?.newReleases?[index].frontCover.toString()}')),
                          Text('${data?.newReleases?[index].title}'),
                        ],
                      ),
                    );
                  }),
            ),
          ],
        ));
  }
}
