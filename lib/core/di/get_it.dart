import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:laza/features/auth/signup/data/api/singup_api_service.dart';
import 'package:laza/features/auth/signup/data/repo_implementation/singup_repo.dart';
import 'package:laza/features/auth/signup/presentation/cubit/singup_cubit.dart';

final getIt = GetIt.instance;

void initGet() {
  getIt.registerLazySingleton<SingupCubit>(() => SingupCubit(getIt()));
  getIt.registerLazySingleton<SingupRepo>(() => SingupRepo(getIt()));
  getIt.registerLazySingleton<SingupApiService>(() => SingupApiService(Dio()));
}
