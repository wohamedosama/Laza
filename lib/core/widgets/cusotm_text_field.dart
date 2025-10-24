import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:laza/core/theme/app_fonts.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.labelText,
    this.controller,
    required this.hintText,
    this.icon,
    this.validator,
    this.obscureText = false,
  });

  final String labelText;
  final TextEditingController? controller;
  final String hintText;
  final IconData? icon;
  final String? Function(String?)? validator;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(labelText, style: AppFonts.styleRegular13),
        SizedBox(height: 10.h),

        TextFormField(
          obscureText: obscureText,
          validator: validator,
          controller: controller,
          decoration: InputDecoration(
            hintText: hintText,
            suffixIcon: icon != null
                ? Icon(icon)
                : SvgPicture.asset(
                    'assets/icons/searchIcon.svg',
                    width: 24.w,
                    height: 24.h,
                    colorFilter: const ColorFilter.mode(
                      Colors.grey,
                      BlendMode.srcIn,
                    ),
                  ),
          ),
        ),
      ],
    );
  }
}
