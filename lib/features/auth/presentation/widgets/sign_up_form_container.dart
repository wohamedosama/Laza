import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza/core/widgets/cusotm_text_field.dart';

class SignUpFormContainer extends StatelessWidget {
  const SignUpFormContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomTextFormField(
          labelText: 'Username',
          hintText: 'Enter your username',
          icon: Icons.check,
        ),
        SizedBox(height: 15.h),
        const CustomTextFormField(
          labelText: 'Password',
          hintText: 'Enter your password',
          icon: Icons.visibility,
        ),
        SizedBox(height: 15.h),
        const CustomTextFormField(
          labelText: 'Email Address',
          hintText: 'Enter your email address',
          icon: Icons.check,
        ),
      ],
    );
  }
}
