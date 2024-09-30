import 'package:thuprai_stacked/ui/views/signup/model/signup_request.dart';
import 'package:thuprai_stacked/ui/views/signup/model/signup_response_model.dart';

abstract class SignupRepository {
  Future<SignupResponseModel?> postSignup(SignupRequest signupRequest) async {
    return null;
  }
}
