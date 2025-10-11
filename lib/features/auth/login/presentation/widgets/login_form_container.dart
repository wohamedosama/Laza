import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza/core/widgets/cusotm_text_field.dart';
import 'package:laza/features/auth/signup/presentation/widgets/validator.dart';

class LoginFormContainer extends StatelessWidget {
  final TextEditingController? emailController;
  final TextEditingController? passwordController;

  const LoginFormContainer({
    super.key,
    this.emailController,
    this.passwordController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFormField(
          controller: emailController,
          validator: Validators.emailValidator,
          labelText: 'Email',
          hintText: 'Enter your email',
          icon: Icons.check,
        ),
        SizedBox(height: 20.h),
        CustomTextFormField(
          obscureText: true,
          validator: Validators.passwordValidator,
          controller: passwordController,
          labelText: 'Password',
          hintText: 'Enter your password',
          icon: Icons.visibility,
        ),
      ],
    );
  }
}
