import 'package:dio/dio.dart';
import 'package:laza/core/networking/api_constant.dart';
import 'package:laza/features/auth/verify_email/data/api/verify_email_api_constant.dart';
import 'package:laza/features/auth/verify_email/data/model/verify_email_mode_request.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'verify_email_api_services.g.dart';

@RestApi(baseUrl: ApiConstant.baseUrl)
abstract class VerifyEmailApiServices {
  factory VerifyEmailApiServices(Dio dio, {String? baseUrl}) =
      _VerifyEmailApiServices;

  @POST(VerifyEmailApiConstant.verifyEmail)
  Future<void> verifyEmail(@Body() VerifyEmailModelRequest request);
}
