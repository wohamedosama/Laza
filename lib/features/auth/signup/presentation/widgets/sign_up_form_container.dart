import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza/core/widgets/cusotm_text_field.dart';
import 'package:laza/features/auth/signup/presentation/widgets/validator.dart';

class SignUpFormContainer extends StatelessWidget {
  final TextEditingController? usernameController;
  final TextEditingController? passwordController;
  final TextEditingController? emailController;

  const SignUpFormContainer({
    super.key,
    this.usernameController,
    this.passwordController,
    this.emailController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFormField(
          validator: Validators.usernameValidator,
          controller: usernameController,
          labelText: 'Username',
          hintText: 'Enter your username',
          icon: Icons.check,
        ),

        SizedBox(height: 15.h),
        CustomTextFormField(
          validator: Validators.emailValidator,
          controller: emailController,
          labelText: 'Email Address',
          hintText: 'Enter your email address',
          icon: Icons.check,
        ),
        SizedBox(height: 15.h),
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
