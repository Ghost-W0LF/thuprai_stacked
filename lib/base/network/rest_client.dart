import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import 'package:thuprai_stacked/ui/views/bookdetail/model/book_model.dart';
import 'package:thuprai_stacked/ui/views/cart/model/add_cart_request_model.dart';
import 'package:thuprai_stacked/ui/views/cart/model/cart_patch_model.dart';
import 'package:thuprai_stacked/ui/views/cart/model/get_cart_model.dart';
import 'package:thuprai_stacked/ui/views/home/model/home_model.dart';
import 'package:thuprai_stacked/ui/views/login/model/login_request_model.dart';
import 'package:thuprai_stacked/ui/views/login/model/login_response_model.dart';
import 'package:thuprai_stacked/ui/views/signup/model/signup_request.dart';
import 'package:thuprai_stacked/ui/views/signup/model/signup_response_model.dart';

part 'rest_client.g.dart';

@RestApi()
abstract class RestClient {
  factory RestClient(Dio dio, {String? baseUrl}) = _RestClient;

  @POST('api/signup/')
  Future<SignupResponseModel> signup(@Body() SignupRequest signup);
  @POST('api/login/')
  Future<LoginResponseModel> login(@Body() LoginRequestModel loginRequestModel);
  @POST('api/basket/add-product/')
  Future<AddCartRequest> addCart(@Body() AddCartRequest addToCart);
  @POST('user/logout/')
  Future<void> logout();

  @GET("book/{slug}")
  Future<BookModel> getBookData(@Path("slug") String slug);

  @GET('index/')
  Future<HomeModel> getHomeData();
  @GET('api/basket/')
  Future<GetCartModel> getCart();

  @DELETE("api/baskets/{cartId}/lines/{linesId}/")
  Future<void> deleteCart(
      @Path('cartId') String cartId, @Path('linesId') String linesId);

  @PATCH('api/baskets/{cartId}/lines/{linesId}/')
  Future<CartPatchModel> updateCart(@Body() CartPatchModel patchModel,
      @Path('cartId') String cartId, @Path('linesId') String linesId);
}
