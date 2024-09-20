import 'package:flutter/material.dart';
import 'package:thuprai_stacked/ui/common/app_size.dart';
import 'package:thuprai_stacked/ui/common/app_colors.dart';
import 'package:thuprai_stacked/ui/common/app_strings.dart';

///Create a custom App bar
class PrimaryAppbar extends StatelessWidget implements PreferredSizeWidget {
  const PrimaryAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            color: kcPrimaryColor,
            size: KSize.iconlg,
          )),
      title: Center(
        child: Text(
          KText.appBarTitle,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: kcPrimaryColor,
              size: KSize.iconlg,
            )),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_cart,
              color: kcPrimaryColor,
              size: KSize.iconlg,
            ))
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(30);
}
