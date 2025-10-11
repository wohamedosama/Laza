import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:laza/core/networking/network_exceptions.dart';

part 'verify_email_state.freezed.dart';

@freezed
class VerifyEmailState with _$VerifyEmailState {
  const factory VerifyEmailState.initial() = VerifyEmailInitial;
  const factory VerifyEmailState.loading() = VerifyEmailLoading;
  const factory VerifyEmailState.success() = VerifyEmailSuccess;
  const factory VerifyEmailState.error(NetworkExceptions message) =
      VerifyEmailError;
}
