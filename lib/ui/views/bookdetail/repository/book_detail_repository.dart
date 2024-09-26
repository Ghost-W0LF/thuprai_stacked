import 'package:thuprai_stacked/ui/views/bookdetail/model/book_model.dart';
import 'package:thuprai_stacked/ui/views/cart/model/add_cart_request_model.dart';

abstract class BookDetailRepository {
  Future<BookModel?> getBookDetail(String bookRepositoryslug);
  Future<void>? addToCart(AddCartRequest addtoCart) {
    return null;
  }
}
