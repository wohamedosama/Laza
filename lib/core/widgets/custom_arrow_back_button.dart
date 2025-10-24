import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
        icon: SvgPicture.asset(
          'assets/icons/menuIcon.svg',
          width: 24.w,
          height: 24.h,
          colorFilter: ColorFilter.mode(
            themeMode == Brightness.dark
                ? AppColors.lightBackground
                : AppColors.darkNavy,
            BlendMode.srcIn,
          ),
        ),
      ),
    );
  }
}
