import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:thuprai_stacked/ui/common/app_text.dart';

import 'mylibrary_viewmodel.dart';

class MylibraryView extends StackedView<MylibraryViewModel> {
  const MylibraryView({super.key});

  @override
  Widget builder(
    BuildContext context,
    MylibraryViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(),
      body: Container(
        padding: const EdgeInsets.only(
          left: 25.0,
          right: 25.0,
        ),
        child: const Center(
          child: Text(AppText.myLibrary),
        ),
      ),
    );
  }

  @override
  MylibraryViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      MylibraryViewModel();
}
