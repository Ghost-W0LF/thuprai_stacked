import 'package:thuprai_stacked/base/network/retro_fit_injection.dart';
import 'package:thuprai_stacked/ui/views/signup/model/signup_request.dart';
import 'package:thuprai_stacked/ui/views/signup/model/signup_response_model.dart';
import 'package:thuprai_stacked/ui/views/signup/repository/signup_repository.dart';

class SignupRepositoryImplementationService implements SignupRepository {
  @override
  Future<SignupResponseModel?> postSignup(SignupRequest signupRequest) {
    try {
      final response = restClient.signup(signupRequest);
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
