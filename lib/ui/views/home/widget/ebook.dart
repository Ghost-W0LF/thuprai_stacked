import 'package:flutter/widgets.dart';
import 'package:thuprai_stacked/ui/views/home/home_viewmodel.dart';
import 'package:thuprai_stacked/ui/views/home/model/home_model.dart';
import 'package:thuprai_stacked/widgets/section_view.dart';

class EbookSection extends StatelessWidget {
  const EbookSection({
    super.key,
    required this.data,
    this.viewModel
  });
  final HomeViewModel? viewModel;

  final HomeModel? data;

  @override
  Widget build(BuildContext context) {
    return SectionView(
        onPressedBuilder: (index) => () => viewModel?.onPressedBook(
            data?.ebooks?[index].title ?? 'No Title',
            index,
            data?.ebooks?[index].slug),
        sectionTitleText: " Ebooks",
        dataLength: data?.ebooks?.length,
        titleBuilder: (index) => data?.ebooks?[index].title ?? 'No Title',
        imageUrlBuilder: (index) =>
            data?.ebooks?[index].frontCover ?? 'notext');
  }
}
