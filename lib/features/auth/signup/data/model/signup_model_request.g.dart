// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_model_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignupModelRequest _$SignupModelRequestFromJson(Map<String, dynamic> json) =>
    SignupModelRequest(
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$SignupModelRequestToJson(SignupModelRequest instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'password': instance.password,
    };
