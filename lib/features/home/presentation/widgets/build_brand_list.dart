import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:laza/core/theme/app_color.dart';
import 'package:laza/core/theme/app_fonts.dart';
import 'package:laza/features/home/presentation/constants/home_constants.dart';

class BuildBrandList extends StatelessWidget {
  const BuildBrandList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: HomeConstants.brandItemHeight.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: HomeConstants.brands.length,
        separatorBuilder: (context, index) =>
            SizedBox(width: HomeConstants.defaultSpacing.w),
        itemBuilder: (context, index) {
          final brand = HomeConstants.brands[index];
          return Container(
            padding: EdgeInsets.symmetric(
              horizontal: HomeConstants.defaultSpacing.w,
            ),
            decoration: BoxDecoration(
              color: AppColors.lightSurface,
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Row(
              children: [
                _getIconWidget(brand['logo'] as String),
                SizedBox(width: 8.w),
                Text(brand['name'] as String, style: AppFonts.styleMedium15),
              ],
            ),
          );
        },
      ),
    );
  }
}

Widget _getIconWidget(String iconName) {
  switch (iconName) {
    case 'sports_soccer':
      return SvgPicture.asset(
        'assets/icons/homeIcon.svg',
        width: 24.w,
        height: 24.h,
        colorFilter: const ColorFilter.mode(
          AppColors.darkNavy,
          BlendMode.srcIn,
        ),
      );
    case 'sports_basketball':
      return SvgPicture.asset(
        'assets/icons/walletIcon.svg',
        width: 24.w,
        height: 24.h,
        colorFilter: const ColorFilter.mode(
          AppColors.darkNavy,
          BlendMode.srcIn,
        ),
      );
    case 'sports_tennis':
      return SvgPicture.asset(
        'assets/icons/cartIcon.svg',
        width: 24.w,
        height: 24.h,
        colorFilter: const ColorFilter.mode(
          AppColors.darkNavy,
          BlendMode.srcIn,
        ),
      );
    default:
      return SvgPicture.asset(
        'assets/icons/searchIcon.svg',
        width: 24.w,
        height: 24.h,
        colorFilter: const ColorFilter.mode(
          AppColors.darkNavy,
          BlendMode.srcIn,
        ),
      );
  }
}
