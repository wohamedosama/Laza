import 'package:laza/core/networking/api_result.dart';
import 'package:laza/core/networking/network_exceptions.dart';
import 'package:laza/features/auth/signup/data/api/singup_api_service.dart';
import 'package:laza/features/auth/signup/data/model/signup_model_request.dart';
import 'package:laza/features/auth/signup/data/model/signup_model_response.dart';

class SingupRepo {
  final SingupApiService singupApiService;
  SingupRepo(this.singupApiService);

  Future<ApiResult<SignupModelResponse>> signup(
    SignupModelRequest request,
  ) async {
    try {
      final response = await singupApiService.signup(request);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(NetworkExceptions.getDioException(error));
    }
  }
}
