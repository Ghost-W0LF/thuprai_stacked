import 'package:thuprai_stacked/ui/views/bookdetail/model/book_model.dart';

abstract class BookDetailRepository {
  Future<BookModel?> getBookDetail(String bookRepositoryslug);
}
