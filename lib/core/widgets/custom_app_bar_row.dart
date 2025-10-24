import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:laza/core/theme/app_color.dart';

class CustomAppBarRow extends StatelessWidget {
  final String leftIcon;
  final String rightIcon;
  final VoidCallback? onLeftTap;
  final VoidCallback? onRightTap;
  final double radius;
  final Color backgroundColor;
  final ColorFilter? rightIconColorFilter;
  final ColorFilter? leftIconColorFilter;
  final Widget? leftIconWidget;
  final Widget? rightIconWidget;

  const CustomAppBarRow({
    super.key,
    required this.leftIcon,
    required this.rightIcon,
    this.onLeftTap,
    this.onRightTap,
    this.radius = 25,
    this.backgroundColor = AppColors.darkCard,
    this.rightIconColorFilter,
    this.leftIconColorFilter,
    this.leftIconWidget,
    this.rightIconWidget,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: onLeftTap,
          child: CircleAvatar(
            radius: radius,
            backgroundColor: backgroundColor,
            child:
                leftIconWidget ??
                SvgPicture.asset(leftIcon, colorFilter: leftIconColorFilter),
          ),
        ),
        GestureDetector(
          onTap: onRightTap,
          child: CircleAvatar(
            radius: radius,
            backgroundColor: backgroundColor,
            child:
                rightIconWidget ??
                SvgPicture.asset(rightIcon, colorFilter: rightIconColorFilter),
          ),
        ),
      ],
    );
  }
}
