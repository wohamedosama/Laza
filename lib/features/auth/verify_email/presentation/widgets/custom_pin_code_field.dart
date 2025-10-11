import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza/core/theme/app_color.dart';
import 'package:laza/core/theme/app_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class CustomPinCodeField extends StatelessWidget {
  final Function(String)? onChanged;
  final Function(String)? onCompleted;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final int length;

  const CustomPinCodeField({
    super.key,
    this.onChanged,
    this.onCompleted,
    this.controller,
    this.validator,
    this.length = 6,
  });

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      appContext: context,
      length: length,
      controller: controller,
      animationType: AnimationType.scale,
      animationDuration: const Duration(milliseconds: 300),
      enableActiveFill: true,
      keyboardType: TextInputType.number,
      autoFocus: true,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(12.r),
        fieldHeight: 60.h,
        fieldWidth: 50.w,
        activeFillColor: AppColors.lightSurface,
        selectedFillColor: AppColors.lightBackground,
        inactiveFillColor: AppColors.lightBackground,
        activeColor: AppColors.primaryColor,
        selectedColor: AppColors.primaryColor,
        inactiveColor: AppColors.mediumGray.withAlpha(80),
        errorBorderColor: AppColors.redColor,
      ),
      cursorColor: AppColors.primaryColor,
      textStyle: AppFonts.styleSemiBold28.copyWith(color: AppColors.darkNavy),
      backgroundColor: Colors.transparent,
      onChanged: onChanged,
      onCompleted: onCompleted,
      validator: validator,
    );
  }
}
