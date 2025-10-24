import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
            child: Center(
              child: SvgPicture.asset(
                'assets/icons/homeIcon.svg',
                width: 50,
                height: 50,
                colorFilter: const ColorFilter.mode(
                  Colors.grey,
                  BlendMode.srcIn,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
