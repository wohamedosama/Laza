import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza/core/theme/app_color.dart';
import 'package:laza/core/theme/app_fonts.dart';
import 'package:laza/core/widgets/custom_elevated_button.dart';

/// Widget that displays the content card with title, description, and action buttons
class OnboardingContentCard extends StatelessWidget {
  const OnboardingContentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        padding: EdgeInsets.all(24.w),
        margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
        decoration: BoxDecoration(
          color: AppColors.lightBackground,
          borderRadius: BorderRadius.circular(20),
        ),

        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              textAlign: TextAlign.center,
              'Look Good, Feel Good',
              style: AppFonts.styleSemiBold28.copyWith(fontSize: 24.sp),
            ),
            SizedBox(height: 14.h),
            Text(
              textAlign: TextAlign.center,
              'Create your individual & unique style and look amazing everyday.',
              style: AppFonts.styleRegular15.copyWith(
                color: AppColors.darkSurface,
              ),
            ),
            SizedBox(height: 24.h),
            Row(
              children: [
                Expanded(
                  child: CustomElevatedButton(
                    backgroundColor: AppColors.darkCard,
                    textStyle: AppFonts.styleMedium17P.copyWith(
                      color: AppColors.darkSurface,
                    ),
                    text: 'Man',
                    onPressed: () {},
                  ),
                ),
                SizedBox(width: 12.w),
                Expanded(
                  child: CustomElevatedButton(
                    onPressed: () {},
                    text: 'Women',
                    textStyle: AppFonts.styleMedium17P.copyWith(
                      color: AppColors.lightBackground,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 24.h),
            TextButton(
              onPressed: () {},
              child: Text(
                'Skip',
                style: AppFonts.styleMedium17P.copyWith(
                  color: AppColors.darkSurface,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
