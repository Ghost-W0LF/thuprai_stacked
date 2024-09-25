import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:thuprai_stacked/ui/common/app_image.dart';
import 'package:thuprai_stacked/ui/common/app_text.dart';

import 'cart_viewmodel.dart';

class CartView extends StackedView<CartViewModel> {
  const CartView({super.key});

  @override
  Widget builder(
    BuildContext context,
    CartViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        appBar: AppBar(
            title: Text(
          AppText.cart,
          style: Theme.of(context).textTheme.headlineLarge,
        )),
        body: ListView.builder(
            itemCount: 4,
            itemBuilder: (context, index) {
              return ListTile(
                subtitle: Text("Book"),
                minTileHeight: 120,
                //leading
                leading: SizedBox(
                  height: 100,
                  width: 100,
                  child: Image.asset(AppImage.book),
                ),
                title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        children: [
                          Text("Book"),
                          Text("Rs.900"),
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {}, icon: const Icon(Icons.remove)),
                          const Text('1'),
                          IconButton(
                              onPressed: () {}, icon: const Icon(Icons.add))
                        ],
                      )
                    ]),
                trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.delete,
                      color: Colors.red,
                    )),
              );
            }));
  }

  @override
  CartViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CartViewModel();
}
