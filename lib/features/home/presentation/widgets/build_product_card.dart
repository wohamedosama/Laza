import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:laza/core/theme/app_color.dart';
import 'package:laza/core/theme/app_fonts.dart';
import 'package:laza/features/home/presentation/constants/home_constants.dart';

class BuildProductCard extends StatelessWidget {
  const BuildProductCard({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.lightSurface,
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color(HomeConstants.products[index]['color'] as int),
                    borderRadius: BorderRadius.circular(15.r),
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      'assets/icons/homeIcon.svg',
                      width: 80.w,
                      height: 80.h,
                      colorFilter: ColorFilter.mode(
                        AppColors.lightBackground.withValues(alpha: 0.5),
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 10.h,
                  right: 10.w,
                  child: Container(
                    width: 30.w,
                    height: 30.h,
                    decoration: const BoxDecoration(
                      color: AppColors.lightBackground,
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset(
                      'assets/icons/heartIcon.svg',
                      width: 18.w,
                      height: 18.h,
                      colorFilter: const ColorFilter.mode(
                        AppColors.darkSurface,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  HomeConstants.products[index]['name'] as String,
                  style: AppFonts.styleRegular15.copyWith(
                    color: AppColors.darkSurface,
                  ),
                ),
                SizedBox(height: 5.h),
                Text(
                  HomeConstants.products[index]['price'] as String,
                  style: AppFonts.styleMedium15.copyWith(
                    color: AppColors.darkNavy,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
