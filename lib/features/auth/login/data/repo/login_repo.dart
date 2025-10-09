// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:laza/core/networking/api_result.dart';
import 'package:laza/core/networking/network_exceptions.dart';
import 'package:laza/features/auth/login/data/api/login_api_services.dart';
import 'package:laza/features/auth/login/data/model/login_model_request.dart';
import 'package:laza/features/auth/login/data/model/login_model_response.dart';

class LoginRepo {
  final LoginApiServices loginApiServices;
  LoginRepo(this.loginApiServices);

  Future<ApiResult<LoginModelResponse>> login(LoginModelRequest request) async {
    try {
      final response = await loginApiServices.login(request);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(NetworkExceptions.getDioException(error));
    }
  }
}
