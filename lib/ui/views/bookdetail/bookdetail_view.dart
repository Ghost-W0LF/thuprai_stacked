import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'bookdetail_viewmodel.dart';

class BookdetailView extends StackedView<BookdetailViewModel> {
  const BookdetailView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    BookdetailViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      ),
    );
  }

  @override
  BookdetailViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      BookdetailViewModel();
}
