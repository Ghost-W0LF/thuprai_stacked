import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';
import 'package:thuprai_stacked/base/utils/helpers.dart';
import 'package:thuprai_stacked/ui/common/app_colors.dart';
import 'package:thuprai_stacked/ui/common/app_image.dart';
import 'package:thuprai_stacked/ui/common/ui_helpers.dart';
import 'package:thuprai_stacked/widgets/primary_appbar.dart';
import 'package:thuprai_stacked/widgets/primary_button.dart';
import 'package:thuprai_stacked/widgets/rounded_image.dart';
import 'bookdetail_viewmodel.dart';

class BookdetailView extends StackedView<BookdetailViewModel> {
  const BookdetailView({
    super.key,
    required this.bookTitle,
    this.slugs,
  });
  final String bookTitle;
  final String? slugs;

  @override
  Widget builder(
    BuildContext context,
    BookdetailViewModel viewModel,
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
    final data = viewModel.bookModel;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: PrimaryAppbar(
          cartItem: viewModel.cartData?.lines?.length.toString(),
          leftActionOnPressedCallBack: () {
            viewModel.navigationto();
          },
          textStyle: Theme.of(context)
              .textTheme
              .titleLarge
              ?.copyWith(color: kcPrimaryColor),
          titleText: bookTitle,
          leftIconButton: Icons.shopping_cart,
          rightIconButton: Icons.more_vert),
      body: SingleChildScrollView(
        child: Column(children: [
          /// Top section
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Image
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: RoundedImage(
                    height: 200.h,
                    width: 150.w,
                    imageUrl:
                        data?.frontCover.toString() ?? AppImage.networkBook),
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ///  Nepali title
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 5.h),
                    child: Text(
                      data?.nepaliTitle.toString() ?? "",
                      style: Helpers.titleText(context),
                    ),
                  ),

                  /// author title
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0.r),
                    child: Text(
                      data?.authors?[0].localizedName.toString() ?? "",
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium
                          ?.copyWith(color: kcPrimaryColor),
                    ),
                  ),

                  /// catagorie
                  Padding(
                    padding: EdgeInsets.all(10.0.r),
                    child: Container(
                      decoration: BoxDecoration(
                          color: kcPrimaryColor.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(10.r)),
                      child: Padding(
                        padding: EdgeInsets.all(12.h),
                        child: Center(
                          child: Text(
                            data?.categories?[0].name.toString() ?? "",
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),

          /// Price container
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {},
              child: Container(
                width: Helpers.getScreenWidth(context) * 0.9.w,
                height: 80.h,
                decoration: BoxDecoration(
                    color: kcPrimaryColor.withOpacity(0.13),
                    border: Border.all(color: kcPrimaryColor)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (data?.hardcover != null)
                      Text(
                        "HardCover",
                        style: Helpers.bodyLarge(context),
                      )
                    else
                      Text("PaperBack", style: Helpers.bodyLarge(context)),
                    if (data?.hardcover != null)
                      Text(
                        'Rs.${data?.hardcover['mrp'].toString()}',
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge
                            ?.copyWith(color: kcPrimaryColor),
                      )
                    else
                      Text('Rs.${data?.paperback?.mrp.toString()}',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(color: kcPrimaryColor))
                  ],
                ),
              ),
            ),
          ),

          /// Description
          SizedBox(
            width: Helpers.getScreenWidth(context),
            child: Text(
              textAlign: TextAlign.left,
              "${data?.backCoverText}",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: PrimaryButton(
              width: Helpers.getScreenWidth(context),
              height: 40,
              text: 'Add to cart',
              onPressedCallBack: viewModel.addTocart,
            ),
          ),
          verticalSpaceLarge
        ]),
      ),
    );
  }

  @override
  BookdetailViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      BookdetailViewModel(viewModelslug: slugs);
}
