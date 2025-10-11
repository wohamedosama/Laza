import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:laza/features/auth/signup/data/model/signup_model_response.dart';

part 'singup_state.freezed.dart';

@freezed
class SingupState with _$SingupState {
  const factory SingupState.initial() = Singupnitial;
  const factory SingupState.loading() = SingupLoading;
  const factory SingupState.success(SignupModelResponse response) =
      SignupSuccess;
  const factory SingupState.failure(String message) = SingupFailure;
}
