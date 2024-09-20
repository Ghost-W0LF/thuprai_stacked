import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:thuprai_stacked/ui/common/app_strings.dart';
import 'package:thuprai_stacked/widgets/primary_appbar.dart';

import 'uikit_viewmodel.dart';

class UikitView extends StackedView<UikitViewModel> {
  const UikitView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    UikitViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const PrimaryAppbar(),
              const SizedBox(height: 20),
              Text(
                KText.loginTitle,
                style: Theme.of(context).textTheme.titleLarge,
              )
            ],
          ),
        ));
  }

  @override
  UikitViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      UikitViewModel();
}
