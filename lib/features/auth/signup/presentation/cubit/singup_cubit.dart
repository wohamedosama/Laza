import 'package:bloc/bloc.dart';
import 'package:laza/core/networking/api_result.dart';
import 'package:laza/core/networking/network_exceptions.dart';
import 'package:laza/features/auth/signup/data/model/signup_model_request.dart';
import 'package:laza/features/auth/signup/data/repo_implementation/singup_repo.dart';
import 'package:laza/features/auth/signup/presentation/cubit/singup_state.dart';

class SingupCubit extends Cubit<SingupState> {
  SingupCubit(this.singupRepo) : super(const SingupState.initial());
  final SingupRepo singupRepo;

  Future<void> signup(SignupModelRequest requset) async {
    emit(const SingupState.loading());
    final result = await singupRepo.signup(requset);
    result.when(
      success: (response) {
        emit(SingupState.success(response));
      },
      failure: (error) {
        final errorMessage = NetworkExceptions.getErrorMessage(error);
        emit(SingupState.failure(errorMessage));
      },
    );
  }
}
