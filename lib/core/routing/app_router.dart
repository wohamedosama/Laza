import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:laza/core/di/get_it.dart';
import 'package:laza/core/routing/routes.dart';
import 'package:laza/features/auth/login/presentation/cubit/login_cubit.dart';
import 'package:laza/features/auth/login/presentation/screens/login_screen.dart';
import 'package:laza/features/auth/signup/presentation/cubit/singup_cubit.dart';
import 'package:laza/features/auth/signup/presentation/screens/sign_up_screen.dart';
import 'package:laza/features/home/presentation/screens/home_screen.dart';
import 'package:laza/features/onbaording/onboarding_screen.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (context) => const OnboardingScreen(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );
      case Routes.signUpScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<SingupCubit>(),
            child: const SignUpScreen(),
          ),
        );
      case Routes.home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route found ${settings.name}')),
          ),
        );
    }
  }
}
