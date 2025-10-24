import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import '../networking/dio_factory.dart';
import '../../features/auth/login/data/api/login_api_services.dart';
import '../../features/auth/login/data/repo/login_repo.dart';
import '../../features/auth/login/presentation/cubit/login_cubit.dart';
import '../../features/auth/signup/data/api/singup_api_service.dart';
import '../../features/auth/signup/data/repo/singup_repo.dart';
import '../../features/auth/signup/presentation/cubit/singup_cubit.dart';
import '../../features/auth/verify_email/data/api/verify_email_api_services.dart';
import '../../features/auth/verify_email/data/repo/verify_email_repo.dart';
import '../../features/auth/verify_email/presentation/cubit/verify_email_cubit.dart';

final getIt = GetIt.instance;

void initGet() {
  Dio dio = DioFactory.getDio();

  // Register API Services
  getIt.registerLazySingleton<SingupApiService>(() => SingupApiService(dio));
  getIt.registerLazySingleton<LoginApiServices>(() => LoginApiServices(dio));
  getIt.registerLazySingleton<VerifyEmailApiServices>(
    () => VerifyEmailApiServices(dio),
  );

  // Register Repository Implementations
  getIt.registerLazySingleton<SingupRepo>(
    () => SingupRepo(getIt<SingupApiService>()),
  );
  getIt.registerLazySingleton<LoginRepo>(
    () => LoginRepo(getIt<LoginApiServices>()),
  );
  getIt.registerLazySingleton<VerifyEmailRepo>(
    () => VerifyEmailRepo(getIt<VerifyEmailApiServices>()),
  );

  // Register Cubits
  getIt.registerLazySingleton<SingupCubit>(() => SingupCubit(getIt()));
  getIt.registerLazySingleton<LoginCubit>(() => LoginCubit(getIt()));
  getIt.registerLazySingleton<VerifyEmailCubit>(
    () => VerifyEmailCubit(getIt()),
  );
}
