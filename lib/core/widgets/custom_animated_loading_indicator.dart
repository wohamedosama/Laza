import 'package:flutter/cupertino.dart';
import 'package:laza/core/theme/app_color.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class CustomAnimatedLoadingIndicator extends StatelessWidget {
  const CustomAnimatedLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: LoadingAnimationWidget.fourRotatingDots(
        color: AppColors.primaryColor,
        size: 50,
      ),
    );
  }
}
