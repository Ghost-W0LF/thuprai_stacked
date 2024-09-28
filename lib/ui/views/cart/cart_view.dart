import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';
import 'package:thuprai_stacked/base/utils/helpers.dart';
import 'package:thuprai_stacked/ui/common/app_colors.dart';
import 'package:thuprai_stacked/ui/common/app_text.dart';
import 'package:thuprai_stacked/ui/common/ui_helpers.dart';
import 'package:thuprai_stacked/widgets/primary_button.dart';
import 'package:thuprai_stacked/widgets/rounded_image.dart';

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
            ListView.builder(
                itemCount: data?.lines?.length,
                itemBuilder: (context, index) {
                  /// returns Padding with [vertical: 5.0]
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),

                    /// Actual List Tile
                    child: Container(
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: const Offset(0, 3),
                        ),
                      ]),
                      height: 100.h,
                      width: Helpers.getScreenWidth(context),
                      child: Padding(
                        padding: EdgeInsets.all(3.0.r),
                        child: Row(
                          children: [
                            /// Leading Image
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0.r),
                              child: RoundedImage(
                                  imageUrl: data?.lines?[index].thumbnail ??
                                      "No  Image"),
                            ),

                            /// Product title
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("${data?.lines?[index].productTitle}"),
                                Text("${data?.lines?[index].mrp}"),
                                const Text("Book")
                              ],
                            ),
                            const Spacer(),
                            Row(
                              children: [
                                /// Add icon
                                IconButton(
                                    onPressed: () async {
                                      viewModel.decreaseCart(index);
                                      viewModel.initialised;
                                    },
                                    icon: const Icon(Icons.remove)),
                                // product Quantity
                                Text("${data?.lines?[index].quantity}"),

                                /// Remove Icon
                                IconButton(
                                    onPressed: () async {
                                      viewModel.increaseCart(index);
                                      viewModel.initialised;
                                    },
                                    icon: const Icon(Icons.add_rounded)),

                                /// delete
                                IconButton(
                                    onPressed: () {
                                      viewModel.deleteItem(index);
                                    },
                                    icon: const Icon(
                                      Icons.delete,
                                      color: Colors.red,
                                    ))
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }),
            Positioned(
              bottom: 5.h,
              child: Container(
                width: Helpers.getScreenWidth(context),
                decoration:
                    BoxDecoration(color: kcPrimaryColor.withOpacity(0.2)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                        "  Subtotal Ammount:-      Rs.${data?.totalExclTaxExclDiscounts}",
                        style: Theme.of(context).textTheme.titleMedium),
                    verticalSpaceMedium,
                    // Text(
                    //     "Discounted Ammount:-      RS.${data?.totalExclTax-data?.totalExclTaxExclDiscounts}",
                    //     style: Theme.of(context).textTheme.titleMedium),
                    Text(
                      "     Total Ammount:-      R.s${data?.totalInclTax}",
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    verticalSpaceMedium,
                    PrimaryButton(
                      onPressedCallBack: () {},
                      text: "Check Out",
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }

  @override
  CartViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CartViewModel();
  }
