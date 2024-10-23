import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';
import 'package:thuprai_stacked/base/theme/custome_theme/app_text_theme.dart';
import 'package:thuprai_stacked/ui/common/app_image.dart';
import 'package:thuprai_stacked/ui/common/ui_helpers.dart';

import 'profile_viewmodel.dart';

class ProfileView extends StackedView<ProfileViewModel> {
  const ProfileView({super.key});

  @override
  Widget builder(
    BuildContext context,
    ProfileViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "thuprai",
            style: AppTextTheme.headlineLarge(context),
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.surface,
        body: SingleChildScrollView(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 50.0.r),
          child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
            CircleAvatar(
                radius: 50.r, backgroundImage: AssetImage(AppImage.profile)),
            verticalSpaceSmall,
            Text("Abhinab"),
            verticalSpaceSmall,
            Text("Abhinab1221@gmail.com"),
            ListTile(
              minTileHeight: 90.h,
              leading: Icon(Icons.manage_accounts),
              title: Text("Settings"),
            ),
            Divider(),
            ListTile(
              minTileHeight: 90.h,
              leading: Icon(Icons.phone_android),
              title: Text("YourDevice"),
            ),
            Divider(),
            ListTile(
              minTileHeight: 90.h,
              leading: Icon(Icons.redeem),
              title: Text("Purchase Gift Voucher"),
            ),
            Divider(),
            ListTile(
              minTileHeight: 90.h,
              leading: Icon(Icons.info_outline_rounded),
              title: Text("Version"),
            ),
            Divider(),
          ]),
        )));
  }

  @override
  ProfileViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ProfileViewModel();
}
