import 'package:flutter/material.dart';
import 'package:thuprai_stacked/ui/views/home/home_viewmodel.dart';
import 'package:thuprai_stacked/ui/views/home/model/home_model.dart';
import 'package:thuprai_stacked/widgets/section_view.dart';

class NewRelease extends StatelessWidget {
  const NewRelease({super.key, required this.data, this.viewModel});
  final HomeViewModel? viewModel;
  final HomeModel? data;

  @override
  Widget build(BuildContext context) {
    return SectionView(
      onPressedBuilder: (index) => () => viewModel?.onPressedBook(
          data?.newReleases?[index].title ?? 'No Title',
          index,
          data?.newReleases?[index].slug),
      sectionTitleText: "New releases",
      dataLength: data?.newReleases?.length,
      titleBuilder: (index) =>
          data?.newReleases?[index].englishTitle ?? 'No Title',
      imageUrlBuilder: (index) =>
          data?.newReleases?[index].frontCover ?? 'No data',
    );
  }
}
