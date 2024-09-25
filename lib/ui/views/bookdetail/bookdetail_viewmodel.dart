import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:thuprai_stacked/app/app.locator.dart';
import 'package:thuprai_stacked/ui/views/bookdetail/model/book_model.dart';
import 'package:thuprai_stacked/ui/views/bookdetail/repository/bookdetailrepository_implementation_service.dart';

class BookdetailViewModel extends BaseViewModel with Initialisable {
  BookdetailViewModel({this.viewModelslug});
  String? viewModelslug;
  BookModel? bookModel = BookModel();
  final _bookRepository =
      locator.get<BookdetailrepositoryImplementationService>();

  @override
  Future<void> initialise() async {
    await getBookData();
  }

  Future<void> getBookData() async {
    setBusy(true);
    try {
      debugPrint(viewModelslug);
      final response =
          await _bookRepository.getBookDetail(viewModelslug.toString());
      bookModel = response;

      debugPrint('book length${bookModel?.englishTitle?.length.toString()}');
    } catch (e) {
      debugPrint(e.toString());
    } finally {
      setBusy(false);
    }
  }
}
