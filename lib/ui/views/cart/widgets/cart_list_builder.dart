import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thuprai_stacked/base/utils/helpers.dart';
import 'package:thuprai_stacked/ui/views/cart/cart_viewmodel.dart';
import 'package:thuprai_stacked/ui/views/cart/model/get_cart_model.dart';
import 'package:thuprai_stacked/widgets/rounded_image.dart';

class CartListBuilder extends StatelessWidget {
  const CartListBuilder({super.key, required this.data, this.viewModel});

  final GetCartModel? data;
  final CartViewModel? viewModel;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: data?.lines?.length,
        itemBuilder: (context, index) {
          /// returns Padding with [vertical: 5.0]
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 5.0.r),

            /// Actual List Tile
            child: Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3.r),
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
                          imageUrl:
                              data?.lines?[index].thumbnail ?? "No  Image"),
                    ),

                    /// Product title
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("${data?.lines?[index].productTitle}"),
                        Text("${data?.lines?[index].mrp}"),
                        Text("${data?.lines?[index].productClass}")
                      ],
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        /// Remove icon
                        data?.lines?[index].quantity == 0
                            ? Padding(
                                padding:
                                    EdgeInsets.symmetric(horizontal: 5.0.r),
                                child: const Icon(Icons.remove),
                              )
                            : IconButton(
                                onPressed: () async {
                                  viewModel?.decreaseCounter(index);
                                  viewModel?.decreaseCart(index);
                                  viewModel?.initialised;
                                },
                                icon: const Icon(Icons.remove)),
                        // product Quantity
                        Text("${data?.lines?[index].quantity}"),

                        /// ADD Icon

                        IconButton(
                            onPressed: () async {
                              viewModel?.addCounter();
                              viewModel?.increaseCart(index);
                              viewModel?.initialised;
                            },
                            icon: const Icon(Icons.add_rounded)),

                        /// delete
                        IconButton(
                            onPressed: () {
                              viewModel?.deleteItem(index);
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
        });
  }
}
