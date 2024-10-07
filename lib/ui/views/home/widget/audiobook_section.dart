import 'package:flutter/widgets.dart';
import 'package:thuprai_stacked/ui/views/home/home_viewmodel.dart';
import 'package:thuprai_stacked/ui/views/home/model/home_model.dart';
import 'package:thuprai_stacked/widgets/section_view.dart';

class AudioBooksection extends StatelessWidget {
  const AudioBooksection({super.key, required this.data, this.viewModel});
  final HomeViewModel? viewModel;
  final HomeModel? data;

  @override
  Widget build(BuildContext context) {
    return SectionView(
        onPressedBuilder: (index) => () => viewModel?.onPressedBook(
            data?.audiobooks?[index].title ?? 'No Title',
            index,
            data?.audiobooks?[index].slug),
        sectionTitleText: "Audio Book",
        dataLength: data?.audiobooks?.length,
        titleBuilder: (index) => data?.audiobooks?[index].title ?? 'No Title',
        imageUrlBuilder: (index) =>
            data?.audiobooks?[index].frontCover ?? 'notext');
  }
}
