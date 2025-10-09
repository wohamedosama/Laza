import 'package:dio/dio.dart';
import 'package:laza/core/networking/api_constant.dart';
import 'package:laza/features/auth/login/data/api/login_api_constant.dart';
import 'package:laza/features/auth/login/data/model/login_model_request.dart';
import 'package:laza/features/auth/login/data/model/login_model_response.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'login_api_services.g.dart';

@RestApi(baseUrl: ApiConstant.baseUrl)
abstract class LoginApiServices {
  factory LoginApiServices(Dio dio, {String? baseUrl}) = _LoginApiServices;
  @POST(LoginApiConstant.login)
  Future<LoginModelResponse> login(@Body() LoginModelRequest request);
}
