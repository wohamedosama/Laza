import 'package:flutter/material.dart';
import 'package:laza/core/theme/app_color.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Onboarding'),
        backgroundColor: AppColors.primaryColor,
      ),
      body: const Column(children: [Center(child: Text('Onboarding'))]),
    );
  }
}
