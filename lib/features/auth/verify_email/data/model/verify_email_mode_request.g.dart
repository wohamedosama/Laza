// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_email_mode_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VerifyEmailModelRequest _$VerifyEmailModelRequestFromJson(
  Map<String, dynamic> json,
) => VerifyEmailModelRequest(
  otpCode: json['otp'] as String,
  email: json['email'] as String,
);

Map<String, dynamic> _$VerifyEmailModelRequestToJson(
  VerifyEmailModelRequest instance,
) => <String, dynamic>{'email': instance.email, 'otp': instance.otpCode};
