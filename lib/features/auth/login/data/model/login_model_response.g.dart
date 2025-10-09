// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_model_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginModelResponse _$LoginModelResponseFromJson(Map<String, dynamic> json) =>
    LoginModelResponse(
      refreshToken: json['refreshToken'] as String?,
      accessToken: json['accessToken'] as String?,
      expiresAtUtc: json['expiresAtUtc'] as String?,
    );

Map<String, dynamic> _$LoginModelResponseToJson(LoginModelResponse instance) =>
    <String, dynamic>{
      'refreshToken': instance.refreshToken,
      'accessToken': instance.accessToken,
      'expiresAtUtc': instance.expiresAtUtc,
    };
