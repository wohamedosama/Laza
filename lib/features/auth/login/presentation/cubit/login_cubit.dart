import 'package:bloc/bloc.dart';
import 'package:laza/core/networking/api_result.dart';
import 'package:laza/core/networking/network_exceptions.dart';
import 'package:laza/features/auth/login/data/model/login_model_request.dart';
import 'package:laza/features/auth/login/data/repo/login_repo.dart';
import 'package:laza/features/auth/login/presentation/cubit/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.loginRepo) : super(const LoginState.initial());
  final LoginRepo loginRepo;

  Future<void> login(LoginModelRequest request) async {
    emit(const LoginState.loading());

    final results = await loginRepo.login(request);
    results.when(
      success: (data) {
        emit(LoginState.success(data));
      },
      failure: (error) {
        emit(LoginState.error(NetworkExceptions.getErrorMessage(error)));
      },
    );
  }
}
