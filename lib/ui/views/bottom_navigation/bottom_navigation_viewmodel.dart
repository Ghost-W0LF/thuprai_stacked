import 'package:stacked/stacked.dart';
import 'package:thuprai_stacked/app/app.locator.dart';
import 'package:thuprai_stacked/services/securestorage_service.dart';
import 'package:thuprai_stacked/ui/views/cart/cart_view.dart';
import 'package:thuprai_stacked/ui/views/home/home_view.dart';

import 'package:thuprai_stacked/ui/views/mylibrary/mylibrary_view.dart';
import 'package:thuprai_stacked/ui/views/profile/profile_view.dart';

class BottomNavigationViewModel extends BaseViewModel {
  final tokenStorege = locator.get<SecurestorageService>();

  final screen = [
    const HomeView(),
    const CartView(),
    const MylibraryView(),
    ProfileView()
  ];

  int index = 0;

  void onPageChanged(index) {
    this.index = index;
    notifyListeners();
  }
}
