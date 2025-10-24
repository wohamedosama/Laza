import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:laza/core/theme/app_assets.dart';
import 'package:laza/core/theme/app_color.dart';
import 'package:laza/core/theme/app_fonts.dart';
import 'package:laza/core/widgets/custom_app_bar_row.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppBarRow(
          leftIcon: AppAssets.assetsIconsmenuIcon,
          rightIcon: AppAssets.assetsIconsCartIcon,
          leftIconWidget: SvgPicture.asset(
            'assets/icons/menuIcon.svg',
            width: 24.w,
            height: 24.h,
            colorFilter: const ColorFilter.mode(
              AppColors.lightBackground,
              BlendMode.srcIn,
            ),
          ),
          rightIconWidget: SvgPicture.asset(
            'assets/icons/cartIcon.svg',
            width: 24.w,
            height: 24.h,
            colorFilter: const ColorFilter.mode(
              AppColors.darkBackground,
              BlendMode.srcIn,
            ),
          ),
          onLeftTap: () {},
          onRightTap: () {},
        ),
        SizedBox(height: 20.0.h),
        Text('Hello', style: AppFonts.styleSemiBold28),
        SizedBox(height: 6.0.h),
        Text(
          'Welcome to Laza.',
          style: AppFonts.styleRegular15.copyWith(color: AppColors.darkSurface),
        ),
      ],
    );
  }
}
