import 'package:dio/dio.dart';
import 'package:laza/core/networking/api_result.dart';
import 'package:laza/core/networking/network_exceptions.dart';
import 'package:laza/features/auth/verify_email/data/api/verify_email_api_services.dart';
import 'package:laza/features/auth/verify_email/data/model/verify_email_mode_request.dart';

class VerifyEmailRepo {
  final VerifyEmailApiServices verifyEmailApiServices;
  VerifyEmailRepo(this.verifyEmailApiServices);

  Future<ApiResult<void>> verifyEmail(VerifyEmailModelRequest request) async {
    try {
      final response = await verifyEmailApiServices.verifyEmail(request);

      return ApiResult.success(response);
    } catch (error) {
      if (error is DioException) {}
      return ApiResult.failure(NetworkExceptions.getDioException(error));
    }
  }
}
