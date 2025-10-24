import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza/core/theme/app_color.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            decoration: InputDecoration(
              hintText: 'Search...',
              hintStyle: TextStyle(
                color: AppColors.darkSurface,
                fontSize: 15.sp,
              ),
              prefixIcon: Icon(
                Icons.search,
                color: AppColors.darkSurface,
                size: 32.sp,
              ),
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(vertical: 15.h),
            ),
          ),
        ),
        SizedBox(width: 10.w),
        Container(
          width: 50.w,
          height: 50.h,
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Icon(Icons.mic, color: AppColors.lightBackground, size: 32.sp),
        ),
      ],
    );
  }
}
