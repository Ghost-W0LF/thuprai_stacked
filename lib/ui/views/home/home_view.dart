import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:thuprai_stacked/app/app.locator.dart';
import 'package:thuprai_stacked/app/app.router.dart';
import 'package:thuprai_stacked/services/securestorage_service.dart';
import 'package:thuprai_stacked/ui/common/ui_helpers.dart';

import 'package:thuprai_stacked/widgets/banner_slider.dart';
import 'package:thuprai_stacked/widgets/primary_appbar.dart';
import 'package:thuprai_stacked/widgets/section_selector.dart';
import 'package:thuprai_stacked/widgets/section_view.dart';

import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({super.key});

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      //passing in the function (a callback) we wan to execute after the current frame finish rendering
      viewModel.getHomeData();
    });
    final navigation = locator<NavigationService>();

    final tokenStorage = locator<SecurestorageService>();
    final data = viewModel.featchedDataa;

    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        appBar: PrimaryAppbar(
          leftActionOnPressedCallBack: () {
            tokenStorage.deleteTojen();
            navigation.replaceWithLoginView();
          },
        ),
        body: viewModel.isBusy
            ? const CircularProgressIndicator()
            : SingleChildScrollView(
                child: Column(
                  children: [
                    const SectionSelector(),
                    verticalSpaceMedium,
                    const BannerSlider(),
                    verticalSpaceMedium,
                    const SectionSelector(),
                    verticalSpaceMedium,
                    //newRelease
                    SectionView(
                        dataLength: data?.newReleases?.length,
                        titleBuilder: (index) =>
                            data?.newReleases?[index].title ?? 'No Title',
                        imageUrlBuilder: (index) =>
                            data?.newReleases?[index].frontCover ?? 'notext'),
                    verticalSpaceMedium,
                    const SectionSelector(),
                    SectionView(
                        dataLength: data?.audiobooks?.length,
                        titleBuilder: (index) =>
                            data?.audiobooks?[index].title ?? 'No Title',
                        imageUrlBuilder: (index) =>
                            data?.audiobooks?[index].frontCover ?? 'notext'),

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
