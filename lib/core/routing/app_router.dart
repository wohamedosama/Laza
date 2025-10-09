import 'package:flutter/material.dart';
import 'package:laza/core/routing/routes.dart';
import 'package:laza/features/auth/presentation/screens/login_screen.dart';
import 'package:laza/features/auth/presentation/screens/sign_up_screen.dart';
import 'package:laza/features/onbaording/onboarding_screen.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (context) => const OnboardingScreen(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case Routes.signUpScreen:
        return MaterialPageRoute(builder: (_) => const SignUpScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route found ${settings.name}')),
          ),
        );
    }
  }
}
