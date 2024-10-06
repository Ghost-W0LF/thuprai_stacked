import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:thuprai_stacked/base/keys/key.dart';
import 'package:thuprai_stacked/ui/common/ui_helpers.dart';
import 'package:thuprai_stacked/ui/views/home/shimmer/login_shimmer.dart';
import 'package:thuprai_stacked/ui/views/home/widget/home_drawer.dart';
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
    if (viewModel.isBusy) {
      /// Display a loading indicator while data is being fetched
      return Scaffold(
          key: Key(homeviewKey),
          backgroundColor: Theme.of(context).colorScheme.surface,
          body: const LoginShimmer());
    }
    final data = viewModel.featchedDataa;
    final cartData = viewModel.cartData;
    if (data == null) {
      /// Display a blank Scaffold while data is being fetched
      return Scaffold(
          key: Key(homeviewKey),
          backgroundColor: Theme.of(context).colorScheme.surface,
          appBar: PrimaryAppbar(
            leftActionOnPressedCallBack: () {
              viewModel.logout();
            },
          ));
    }

    return Scaffold(
        key: Key(homeviewKey),

        /// display data when data is fetched
        backgroundColor: Theme.of(context).colorScheme.surface,
        appBar: PrimaryAppbar(
          appBarKey: Key(appBarKey),
          leftIconButton: Icons.logout,
          cartItem: cartData?.lines?.length.toString(),
          rightActionOnPressedCallBack: () {
            viewModel.navigatetoCart();
          },
          leftActionOnPressedCallBack: () {
            viewModel.logout();
          },
        ),

        /// drawer
        drawer: HomeDrawer(
          viewModel: viewModel,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // top section selector
              const SectionSelector(),
              verticalSpaceSmall,
              // top featured List
              BannerSlider(
                listLength: data.featured?.length ?? 0,
                imageBuilder: (index) =>
                    data.featured?[index].image ?? 'No data',
              ),

              // second section selector
              const SectionSelector(),

              //newRelease section
              SectionView(
                onPressedBuilder: (index) => () => viewModel.onPressedBook(
                    data.newReleases?[index].title ?? 'No Title',
                    index,
                    data.newReleases?[index].slug),
                sectionTitleText: "New releases",
                dataLength: data.newReleases?.length,
                titleBuilder: (index) =>
                    data.newReleases?[index].englishTitle ?? 'No Title',
                imageUrlBuilder: (index) =>
                    data.newReleases?[index].frontCover ?? 'No data',
              ),

              verticalSpaceSmall,
              // third section selector
              const SectionSelector(),
              //AudioBook
              SectionView(
                  onPressedBuilder: (index) => () => viewModel.onPressedBook(
                      data.audiobooks?[index].title ?? 'No Title',
                      index,
                      data.audiobooks?[index].slug),
                  sectionTitleText: "Audio Book",
                  dataLength: data.audiobooks?.length,
                  titleBuilder: (index) =>
                      data.audiobooks?[index].title ?? 'No Title',
                  imageUrlBuilder: (index) =>
                      data.audiobooks?[index].frontCover ?? 'notext'),
              verticalSpaceSmall,
              // fourth section selector
              const SectionSelector(),
              //bestsellingEbooks
              SectionView(
                  onPressedBuilder: (index) => () => viewModel.onPressedBook(
                      data.ebooks?[index].title ?? 'No Title',
                      index,
                      data.ebooks?[index].slug),
                  sectionTitleText: " Ebooks",
                  dataLength: data.ebooks?.length,
                  titleBuilder: (index) =>
                      data.ebooks?[index].title ?? 'No Title',
                  imageUrlBuilder: (index) =>
                      data.ebooks?[index].frontCover ?? 'notext'),
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
