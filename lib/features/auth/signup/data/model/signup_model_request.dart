// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

part 'signup_model_request.g.dart';

@JsonSerializable()
class SignupModelRequest {
  final String? firstName;
  final String? lastName;
  final String email;
  final String password;
  SignupModelRequest({
    this.firstName,
    this.lastName,
    required this.email,
    required this.password,
  });

  Map<String, dynamic> toJson() => _$SignupModelRequestToJson(this);
}
