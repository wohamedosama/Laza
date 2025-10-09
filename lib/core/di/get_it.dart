import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:laza/features/auth/login/data/api/login_api_services.dart';
import 'package:laza/features/auth/login/data/repo/login_repo.dart';
import 'package:laza/features/auth/login/presentation/cubit/login_cubit.dart';
import 'package:laza/features/auth/signup/data/api/singup_api_service.dart';
import 'package:laza/features/auth/signup/data/repo/singup_repo.dart';
import 'package:laza/features/auth/signup/presentation/cubit/singup_cubit.dart';

final getIt = GetIt.instance;

void initGet() {
  getIt.registerLazySingleton<SingupCubit>(() => SingupCubit(getIt()));
  getIt.registerLazySingleton<SingupRepo>(() => SingupRepo(getIt()));
  getIt.registerLazySingleton<SingupApiService>(() => SingupApiService(Dio()));
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerLazySingleton<LoginCubit>(() => LoginCubit(getIt()));
  getIt.registerLazySingleton<LoginApiServices>(() => LoginApiServices(Dio()));
}
