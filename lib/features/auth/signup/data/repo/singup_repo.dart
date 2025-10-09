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
      final exception = NetworkExceptions.getDioException(error);

      // Check if the error is a conflict (409) or indicates user already exists
      final mappedException = exception.maybeWhen(
        conflict: () => const NetworkExceptions.alreadyRegistered(),
        badRequest: (reason) {
          // Check if the error message indicates user already exists
          if (reason.toLowerCase().contains('already registered') ||
              reason.toLowerCase().contains('already exists') ||
              reason.toLowerCase().contains('user already')) {
            return const NetworkExceptions.alreadyRegistered();
          }
          return exception;
        },
        orElse: () => exception,
      );

      return ApiResult.failure(mappedException);
    }
  }
}
