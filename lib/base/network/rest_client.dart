import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import 'package:thuprai_stacked/ui/views/bookdetail/model/book_model.dart';
import 'package:thuprai_stacked/ui/views/home/model/home_model.dart';
import 'package:thuprai_stacked/ui/views/login/model/login_request_model.dart';
import 'package:thuprai_stacked/ui/views/login/model/login_response_model.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: 'https://tbe.thuprai.com/v1/')
abstract class RestClient {
  factory RestClient(Dio dio, {String? baseUrl}) = _RestClient;

  @POST('api/login/')
  Future<LoginResponseModel> login(@Body() LoginRequestModel loginRequestModel);
  @GET("book/{slug}")
  Future<BookModel> getBookData(@Path("slug") String slug);


  @GET('index/')
  Future<HomeModel> getHomeData();
}
