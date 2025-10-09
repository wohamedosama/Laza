import 'package:flutter/material.dart';
import 'package:laza/core/theme/app_color.dart';
import 'package:laza/features/onbaording/widgets/onboarding_content_card.dart';
import 'package:laza/features/onbaording/widgets/onboarding_image_widget.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeMode = Theme.of(context).brightness;

    return Scaffold(
      backgroundColor: themeMode == Brightness.dark
          ? AppColors.darkBackground
          : AppColors.primaryColor,
      body: const Stack(
        children: [
          OnboardingImageWidget(image: "assets/images/onboarding.png"),
          OnboardingContentCard(),
        ],
      ),
    );
  }
}
