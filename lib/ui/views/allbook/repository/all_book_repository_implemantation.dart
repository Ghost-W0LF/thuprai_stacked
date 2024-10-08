import 'package:thuprai_stacked/base/network/retro_fit_injection.dart';
import 'package:thuprai_stacked/ui/views/allbook/model/all_book_model.dart';
import 'package:thuprai_stacked/ui/views/allbook/repository/all_book_repository.dart';

class AllBookRepositoryImplemantation implements AllBookRepository {
  @override
  Future<AllBookModel> getAllBook() {
    try {
      final response = restClient.getAllBook();
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
