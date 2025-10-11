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
      print('VerifyEmailRepo: Sending request with ${request.toJson()}');
      final response = await verifyEmailApiServices.verifyEmail(request);
      print('VerifyEmailRepo: API call succeeded!');
      return ApiResult.success(response);
    } catch (error) {
      print('VerifyEmailRepo: API call failed with error: $error');
      if (error is DioException) {
        print('Response status: ${error.response?.statusCode}');
        print('Response data: ${error.response?.data}');
      }
      return ApiResult.failure(NetworkExceptions.getDioException(error));
    }
  }
}
