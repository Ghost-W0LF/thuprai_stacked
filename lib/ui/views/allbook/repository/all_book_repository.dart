import 'package:thuprai_stacked/ui/views/allbook/model/all_book_model.dart';

abstract class AllBookRepository {
  Future<AllBookModel> getAllBook();
}
