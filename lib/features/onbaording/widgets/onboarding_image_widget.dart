import 'package:flutter/material.dart';

/// Widget that displays the background image for the onboarding screen
class OnboardingImageWidget extends StatelessWidget {
  const OnboardingImageWidget({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Image.asset(
        image,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) {
          return Container(
            color: Colors.grey[300],
            child: const Center(
              child: Icon(Icons.broken_image, size: 50, color: Colors.grey),
            ),
          );
        },
      ),
    );
  }
}
