import 'package:stacked/stacked.dart';

class BottomNavigationViewModel extends BaseViewModel {
  int index = 0;

  void onPageChanged(index) {
    this.index = index;
    notifyListeners();
  }
}
