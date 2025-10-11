import 'package:json_annotation/json_annotation.dart';

part 'signup_model_response.g.dart';

@JsonSerializable()
class SignupModelResponse {
  final String message;
  SignupModelResponse({required this.message});

  factory SignupModelResponse.fromJson(Map<String, dynamic> json) =>
      _$SignupModelResponseFromJson(json);
}
