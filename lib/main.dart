import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:laza/core/di/get_it.dart';
import 'package:laza/core/helpers/bloc_observer.dart';
import 'package:laza/core/routing/app_router.dart';
import 'package:laza/laza.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Set the BLoC observer
  Bloc.observer = AppBlocObserver();

  initGet();
  runApp(LazaApplication(appRouter: AppRouter()));
}
