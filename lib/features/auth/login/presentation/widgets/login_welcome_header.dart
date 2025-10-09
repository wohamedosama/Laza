import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza/core/theme/app_color.dart';
import 'package:laza/core/theme/app_fonts.dart';

class LoginWelcomeHeader extends StatelessWidget {
  const LoginWelcomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text('Welcome', style: AppFonts.styleBold34),
          SizedBox(height: 8.h),
          Text(
            'Please enter your data to continue',
            style: AppFonts.styleRegular15.copyWith(
              color: AppColors.darkSurface,
            ),
          ),
          SizedBox(height: 30.h),
        ],
      ),
    );
  }
}
