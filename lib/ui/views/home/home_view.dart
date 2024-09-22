import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:thuprai_stacked/ui/common/ui_helpers.dart';
import 'package:thuprai_stacked/widgets/banner_slider.dart';
import 'package:thuprai_stacked/widgets/primary_appbar.dart';
import 'package:thuprai_stacked/widgets/section_selector.dart';
import 'package:thuprai_stacked/widgets/section_view.dart';

import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        appBar: const PrimaryAppbar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SectionSelector(),
              verticalSpaceMedium,
              BannerSlider(),
              verticalSpaceMedium,
              SectionSelector(),
              verticalSpaceMedium,
              SectionView(),
              verticalSpaceLarge
            ],
          ),
        ));
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}
