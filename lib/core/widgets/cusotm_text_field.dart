import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza/core/theme/app_fonts.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.labelText,
    this.controller,
    required this.hintText,
    this.icon,
  });

  final String labelText;
  final TextEditingController? controller;
  final String hintText;
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(labelText, style: AppFonts.styleRegular13),
        SizedBox(height: 10.h),

        TextField(
          controller: controller,
          decoration: InputDecoration(
            hintText: hintText,
            suffixIcon: Icon(icon),
          ),
        ),
      ],
    );
  }
}
