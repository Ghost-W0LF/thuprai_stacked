import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:thuprai_stacked/ui/views/home/home_viewmodel.dart';
import 'package:thuprai_stacked/widgets/primary_appbar.dart';
// import 'package:thuprai_stacked/widgets/rounded_image.dart';

import 'bookdetail_viewmodel.dart';

class BookdetailView extends StackedView<BookdetailViewModel> {
  const BookdetailView(
      {super.key,
      required this.bookTitle,
      required this.index,
      this.slugs,
      this.homeViewModel});
  final String bookTitle;
  final int index;
  final String? slugs;
  final HomeViewModel? homeViewModel;

  @override
  Widget builder(
    BuildContext context,
    BookdetailViewModel viewModel,
    Widget? child,
  ) {
    if (viewModel.isBusy) {
      /// Display a loading indicator while data is being fetched
      return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        body: const Center(
          child: CircularProgressIndicator(),
        ),
      );
    }
    final data = viewModel.bookModel;
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        appBar: PrimaryAppbar(
            titleText: bookTitle,
            leftIconButton: Icons.shopping_cart,
            rightIconButton: Icons.more_vert),
        body: SingleChildScrollView(
            child: Column(children: [
          Row(
            children: [
              Text(data?.englishTitle.toString() ?? 'no text'),
              Text(slugs.toString())
              // Text(d)
              // RoundedImage(
              //     imageUrl: data?.frontCover.toString() ?? AppImage.networkBook)
            ],
          )
        ])));
  }

  @override
  BookdetailViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      BookdetailViewModel(viewModelslug: slugs);
}
