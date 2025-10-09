import 'package:dio/dio.dart';
import 'package:laza/core/networking/api_constant.dart';
import 'package:laza/features/auth/signup/data/api/signup_constatnt.dart';
import 'package:laza/features/auth/signup/data/model/signup_model_request.dart';
import 'package:laza/features/auth/signup/data/model/signup_model_response.dart';
import 'package:retrofit/retrofit.dart';

part 'singup_api_service.g.dart';

@RestApi(baseUrl: ApiConstant.baseUrl)
abstract class SingupApiService {
  factory SingupApiService(Dio dio, {String? baseUrl}) = _SingupApiService;

  @POST(SignupConstatnt.signup)
  Future<SignupModelResponse> signup(@Body() SignupModelRequest request);
}
