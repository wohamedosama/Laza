import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:laza/core/networking/dio_factory.dart';
import 'package:laza/features/auth/login/data/api/login_api_services.dart';
import 'package:laza/features/auth/login/data/repo/login_repo.dart';
import 'package:laza/features/auth/login/presentation/cubit/login_cubit.dart';
import 'package:laza/features/auth/signup/data/api/singup_api_service.dart';
import 'package:laza/features/auth/signup/data/repo/singup_repo.dart';
import 'package:laza/features/auth/signup/presentation/cubit/singup_cubit.dart';
import 'package:laza/features/auth/verify_email/data/api/verify_email_api_services.dart';
import 'package:laza/features/auth/verify_email/data/repo/verify_email_repo.dart';
import 'package:laza/features/auth/verify_email/presentation/cubit/verify_email_cubit.dart';

final getIt = GetIt.instance;
void initGet() {
  Dio dio = DioFactory.getDio();

  getIt.registerLazySingleton<SingupCubit>(() => SingupCubit(getIt()));
  getIt.registerLazySingleton<SingupRepo>(() => SingupRepo(getIt()));
  getIt.registerLazySingleton<SingupApiService>(() => SingupApiService(dio));
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerLazySingleton<LoginCubit>(() => LoginCubit(getIt()));
  getIt.registerLazySingleton<LoginApiServices>(() => LoginApiServices(dio));
  getIt.registerLazySingleton<VerifyEmailRepo>(() => VerifyEmailRepo(getIt()));
  getIt.registerLazySingleton<VerifyEmailCubit>(
    () => VerifyEmailCubit(getIt()),
  );
  getIt.registerLazySingleton<VerifyEmailApiServices>(
    () => VerifyEmailApiServices(dio),
  );
}
