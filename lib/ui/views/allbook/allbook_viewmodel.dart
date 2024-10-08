import 'package:flutter/foundation.dart';
import 'package:stacked/stacked.dart';
import 'package:thuprai_stacked/base/wrapper/base_view_model_wrapper.dart';
import 'package:thuprai_stacked/ui/views/allbook/model/all_book_model.dart';

class AllbookViewModel extends BaseViewModelWrapper with Initialisable {
  AllBookModel allBook = AllBookModel();
  Future<void> getAllBookData() async {
    setBusy(true);
    try {
      final responsee = await allBookRepository.getAllBook();
      allBook = responsee;
      debugPrint(allBook.results?.length.toString());
      debugPrint(allBook.results?.length.toString());
    } catch (e) {
      rethrow;
    } finally {
      setBusy(false);
    }
  }

  @override
  void initialise() async {
    await getAllBookData();
  }
}
