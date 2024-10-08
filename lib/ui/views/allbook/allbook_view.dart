import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';
import 'package:thuprai_stacked/app/app.router.dart';
import 'package:thuprai_stacked/main.dart';
import 'package:thuprai_stacked/ui/common/ui_helpers.dart';
import 'package:thuprai_stacked/ui/views/home/shimmer/login_shimmer.dart';
import 'package:thuprai_stacked/widgets/rounded_image.dart';

import 'allbook_viewmodel.dart';

class AllbookView extends StackedView<AllbookViewModel> {
  const AllbookView({super.key});

  @override
  Widget builder(
    BuildContext context,
    AllbookViewModel viewModel,
    Widget? child,
  ) {
    if (viewModel.isBusy) {
      /// Display a loading indicator while data is being fetched
      return Scaffold(
          backgroundColor: Theme.of(context).colorScheme.surface,
          body: Center(child: const CircularProgressIndicator()));
    }
    final data = viewModel.allBook;
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        appBar: AppBar(
          title: const Text('All Book'),
          leading: IconButton(
              onPressed: () {
                viewModel.navigation.replaceWithHomeView();
              },
              icon: Icon(Icons.arrow_back_ios)),
        ),
        body: GridView.builder(
          itemCount: data.results?.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, // Number of items per row
            crossAxisSpacing: 10, // Horizontal space between items
            mainAxisSpacing: 10, // Vertical space between items
            childAspectRatio: 0.8, // Width to height ratio of each item
          ),
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.all(5.0.r), // Adding some padding
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.r),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 4.r,
                    spreadRadius: 2.r,
                  )
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                      child: RoundedImage(
                          key: Key('RoundedImage$index'),
                          imageUrl: data.results?[index].frontCover ?? "")),
                  verticalSpaceTiny,
                  Text(data.results?[index].title ?? ""),
                ],
              ),
            );
          },
        ));
  }

  @override
  AllbookViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      AllbookViewModel();
}
