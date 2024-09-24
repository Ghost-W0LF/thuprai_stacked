import 'package:flutter/material.dart';
import 'package:thuprai_stacked/base/utils/helpers.dart';
import 'package:thuprai_stacked/ui/common/app_text.dart';
import 'package:thuprai_stacked/widgets/primary_listtile.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(children: [
      DrawerHeader(
          child: Center(
        child: Text(
          AppText.thuprai,
          style: Helpers.headlineLarg(context),
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
