import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'mylibrary_viewmodel.dart';

class MylibraryView extends StackedView<MylibraryViewModel> {
  const MylibraryView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    MylibraryViewModel viewModel,
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
  MylibraryViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      MylibraryViewModel();
}
