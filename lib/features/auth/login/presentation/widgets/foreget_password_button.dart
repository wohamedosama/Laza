import 'package:flutter/material.dart';
import 'package:laza/core/theme/app_color.dart';
import 'package:laza/core/theme/app_fonts.dart';

class ForgetPasswordButton extends StatelessWidget {
  const ForgetPasswordButton({super.key, this.onPressed});
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          'Forgot Password?',
          style: AppFonts.styleRegular15.copyWith(
            color: AppColors.secondaryColor,
          ),
        ),
      ),
    );
  }
}
