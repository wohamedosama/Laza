import 'package:json_annotation/json_annotation.dart';

part 'login_model_response.g.dart';

@JsonSerializable()
class LoginModelResponse {
  final String? refreshToken;
  final String? accessToken;
  final String? expiresAtUtc;

  LoginModelResponse({this.refreshToken, this.accessToken, this.expiresAtUtc});

  factory LoginModelResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginModelResponseFromJson(json);
}
