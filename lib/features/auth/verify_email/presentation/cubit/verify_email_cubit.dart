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
    print('VerifyEmailCubit: verifyEmail called');
    print('VerifyEmailCubit: Request = ${request.toJson()}');

    emit(const VerifyEmailState.loading());
    print('VerifyEmailCubit: Loading state emitted');

    final result = await verifyEmailRepo.verifyEmail(request);
    print('VerifyEmailCubit: Got result from repo');

    result.when(
      success: (response) {
        print('VerifyEmailCubit: SUCCESS!');
        emit(const VerifyEmailState.success());
      },
      failure: (error) {
        print('VerifyEmailCubit: FAILURE - $error');
        emit(VerifyEmailState.error(error));
      },
    );
  }
}
