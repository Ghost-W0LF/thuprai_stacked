import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:thuprai_stacked/ui/common/app_text.dart';
import 'package:thuprai_stacked/ui/views/cart/widgets/bottom_section.dart';
import 'package:thuprai_stacked/ui/views/cart/widgets/cart_list_builder.dart';

import 'cart_viewmodel.dart';

class CartView extends StackedView<CartViewModel> {
  const CartView({super.key});

  @override
  Widget builder(
    BuildContext context,
    CartViewModel viewModel,
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
    final data = viewModel.cart;
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        appBar: AppBar(
            title: Text(
          AppText.cart,
          style: Theme.of(context).textTheme.headlineLarge,
        )),

        /// ListView Builder
        ///  This widget is used to display a list of items
        body: Stack(
          children: [
            // List View
            CartListBuilder(data: data, viewModel: viewModel),
            // Bottom Section
            BottomSection(data: data),
          ],
        ));
  }

  @override
  CartViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CartViewModel();
}
