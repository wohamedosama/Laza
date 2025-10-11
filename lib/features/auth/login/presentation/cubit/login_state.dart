import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:laza/features/auth/login/data/model/login_model_response.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.loading() = _Loading;
  const factory LoginState.success(LoginModelResponse loginModelResponse) =
      _Success;
  const factory LoginState.error(String message) = _Error;
}
