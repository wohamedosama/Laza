import 'package:json_annotation/json_annotation.dart';

part 'login_model_request.g.dart';

@JsonSerializable()
class LoginModelRequest {
  final String email;
  final String password;

  LoginModelRequest({required this.email, required this.password});

  factory LoginModelRequest.fromJson(Map<String, dynamic> json) =>
      _$LoginModelRequestFromJson(json);

  Map<String, dynamic> toJson() => _$LoginModelRequestToJson(this);
}
