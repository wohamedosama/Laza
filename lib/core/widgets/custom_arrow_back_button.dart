import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza/core/helpers/extension.dart';
import 'package:laza/core/theme/app_color.dart';

class CustomArrowBackButton extends StatelessWidget {
  const CustomArrowBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    final themeMode = Theme.of(context).brightness;

    return CircleAvatar(
      radius: 20.r,
      backgroundColor: themeMode == Brightness.dark
          ? AppColors.darkNavy
          : AppColors.lightSurface,
      child: IconButton(
        onPressed: () {
          context.pop();
        },
        icon: Icon(
          Icons.arrow_back_outlined,
          size: 24.r,
          color: themeMode == Brightness.dark
              ? AppColors.lightBackground
              : AppColors.darkNavy,
        ),
      ),
    );
  }
}
