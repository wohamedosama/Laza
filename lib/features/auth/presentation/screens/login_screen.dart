import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza/core/widgets/custom_arrow_back_button.dart';
import 'package:laza/core/widgets/custom_elevated_button.dart';
import 'package:laza/core/widgets/custom_rich_text.dart';
import 'package:laza/features/auth/presentation/widgets/foreget_password_button.dart';
import 'package:laza/features/auth/presentation/widgets/login_form_container.dart';
import 'package:laza/features/auth/presentation/widgets/login_welcome_header.dart';
import 'package:laza/features/auth/presentation/widgets/remember_me_switch.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 15.h),
                      const CustomArrowBackButton(),
                      SizedBox(height: 15.h),
                      const LoginWelcomeHeader(),
                      SizedBox(height: 100.h),
                      const LoginFormContainer(),
                      SizedBox(height: 20.h),
                      const ForgetPasswordButton(),
                      SizedBox(height: 20.h),
                      RememberMeSwitch(value: true, onChanged: (value) {}),
                      SizedBox(height: 100.h),
                      CustomRichText(
                        normalText:
                            'By connecting your account confirm that you agree with our ',
                        highlightedText: 'Term and Condition',
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ),
            CustomElevatedButton(text: 'Login', onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
