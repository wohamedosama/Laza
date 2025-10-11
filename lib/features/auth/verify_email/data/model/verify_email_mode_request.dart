import 'package:json_annotation/json_annotation.dart';

part 'verify_email_mode_request.g.dart';

@JsonSerializable()
class VerifyEmailModelRequest {
  final String email;
  @JsonKey(name: 'otp')
  final String otpCode;

  const VerifyEmailModelRequest({required this.otpCode, required this.email});

  factory VerifyEmailModelRequest.fromJson(Map<String, dynamic> json) =>
      _$VerifyEmailModelRequestFromJson(json);

  Map<String, dynamic> toJson() => _$VerifyEmailModelRequestToJson(this);
}
