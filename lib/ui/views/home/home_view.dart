import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:thuprai_stacked/app/app.locator.dart';
import 'package:thuprai_stacked/app/app.router.dart';
import 'package:thuprai_stacked/services/securestorage_service.dart';
import 'package:thuprai_stacked/ui/common/ui_helpers.dart';
import 'package:thuprai_stacked/ui/views/login/repository/loginrepository_implementation_service.dart';
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
    WidgetsBinding.instance.addPostFrameCallback((_) {
      //passing in the function (a callback) we wan to execute after the current frame finish rendering
    });
    final navigation = locator<NavigationService>();
    final tokenStorage = locator<SecurestorageService>();
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        appBar: PrimaryAppbar(
          leftActionOnPressedCallBack: () {
            tokenStorage.deleteTojen();
            navigation.replaceWithLoginView();
          },
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SectionSelector(),
              verticalSpaceMedium,
              const BannerSlider(),
              verticalSpaceMedium,
              const SectionSelector(),
              verticalSpaceMedium,
              const SectionView(),
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
