import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';
import 'package:thuprai_stacked/base/utils/helpers.dart';
import 'package:thuprai_stacked/ui/common/app_text.dart';
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
        body: ListView.builder(
            itemCount: data?.lines?.length,
            itemBuilder: (context, index) {
              /// returns Padding with [vertical: 5.0]
              return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),

                  /// Actual List Tile
                  child: GestureDetector(
                    onTap: () {},
                    child: SizedBox(
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
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.remove)),
                                Text("${data?.lines?[index].quantity}"),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.add)),
                                IconButton(
                                    onPressed: () {},
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
                  )
                  /* ListTile(
                  tileColor: kcPrimaryColor.withOpacity(0.1),

                  /// Min height of list tile
                  ///   This is used to prevent the list tile from shrinking
                  minTileHeight: 200,

                  //leading
                  leading: Card(
                    child: Image(
                      image: NetworkImage(
                        data?.lines?[index].thumbnail ?? "No  Image",
                      ),
                      height: 200,
                      width: 100,
                    ),
                  ),
                  /*  RoundedImage(
                      height: 200,
                      imageUrl: data?.lines?[index].thumbnail ?? "No  Image"), */
                  subtitle: const Text("Book"),

                  /// Middel part of ListTile
                  /* title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        /// Product title and price
                        SizedBox(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              /* Text(
                                "${data?.lines?[index].productTitle}",
                              ), */

                              /// Mrp
                              /* Text("Rs.${data?.lines?[index].mrp.toString()}"), */
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.remove)),
                            const Text('1'),
                            IconButton(
                                onPressed: () {}, icon: const Icon(Icons.add))
                          ],
                        )
                      ]), */
                  /*    trailing: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.delete,
                        color: Colors.red,
                      )), */
                ), */
                  );
            }));
  }

  @override
  CartViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CartViewModel();
}
