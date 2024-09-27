import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';
import 'package:thuprai_stacked/ui/common/app_text.dart';

import 'bottom_navigation_viewmodel.dart';

class BottomNavigationView extends StackedView<BottomNavigationViewModel> {
  const BottomNavigationView({super.key});

  @override
  Widget builder(
    BuildContext context,
    BottomNavigationViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: viewModel.screen[viewModel.index],
      bottomNavigationBar: NavigationBar(
        height: 50.h,
        selectedIndex: viewModel.index,
        onDestinationSelected: (index) {
          viewModel.onPageChanged(index);
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined, color: Colors.black),
            label: AppText.home,
          ),
          NavigationDestination(
            icon: Icon(Icons.shopping_cart, color: Colors.black),
            label: AppText.cart,
          ),
          NavigationDestination(
            icon: Icon(
              Icons.library_books,
              color: Colors.black,
            ),
            label: AppText.myLibrary,
          ),
          NavigationDestination(
            icon: Icon(Icons.more_horiz, color: Colors.black),
            label: AppText.more,
          ),
        ],
      ),
    );
  }

  @override
  BottomNavigationViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      BottomNavigationViewModel();
}
