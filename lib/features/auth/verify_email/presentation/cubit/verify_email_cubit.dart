import 'package:bloc/bloc.dart';
import 'package:laza/core/networking/api_result.dart';
import 'package:laza/features/auth/verify_email/data/model/verify_email_mode_request.dart';
import 'package:laza/features/auth/verify_email/data/repo/verify_email_repo.dart';
import 'package:laza/features/auth/verify_email/presentation/cubit/verify_email_state.dart';

class VerifyEmailCubit extends Cubit<VerifyEmailState> {
  VerifyEmailCubit(this.verifyEmailRepo)
    : super(const VerifyEmailState.initial());
  final VerifyEmailRepo verifyEmailRepo;

  Future<void> verifyEmail(VerifyEmailModelRequest request) async {
    emit(const VerifyEmailState.loading());

    final result = await verifyEmailRepo.verifyEmail(request);

    result.when(
      success: (response) {
        emit(const VerifyEmailState.success());
      },
      failure: (error) {
        emit(VerifyEmailState.error(error));
      },
    );
  }
}
