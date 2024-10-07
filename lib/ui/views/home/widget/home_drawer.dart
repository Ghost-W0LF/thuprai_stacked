import 'package:flutter/material.dart';
import 'package:thuprai_stacked/base/theme/custome_theme/app_text_theme.dart';
import 'package:thuprai_stacked/ui/common/app_text.dart';
import 'package:thuprai_stacked/ui/views/home/home_viewmodel.dart';
import 'package:thuprai_stacked/widgets/primary_listtile.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key, required this.viewModel});
  final HomeViewModel? viewModel;

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(children: [
      DrawerHeader(
          child: Center(
        child: Text(
          AppText.thuprai,
          style: AppTextTheme.headlineLarge(context),
        ),
      )),

      /// list tile
      const PrimaryListTile(
        title: AppText.myLibrary,
      ),
      const PrimaryListTile(
        title: AppText.allBooks,
      ),
      const PrimaryListTile(
        title: AppText.ebooks,
      ),
      const PrimaryListTile(
        title: AppText.audiobook,
      ),
      const PrimaryListTile(
        title: AppText.genres,
      ),
      const PrimaryListTile(
        title: AppText.artical,
      ),
      const PrimaryListTile(
        title: AppText.taskar,
      ),
    ]));
  }
}
