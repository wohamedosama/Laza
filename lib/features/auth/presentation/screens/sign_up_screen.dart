import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza/core/helpers/extension.dart';
import 'package:laza/core/routing/routes.dart';
import 'package:laza/core/theme/app_fonts.dart';
import 'package:laza/core/widgets/custom_arrow_back_button.dart';
import 'package:laza/core/widgets/custom_elevated_button.dart';
import 'package:laza/core/widgets/custom_rich_text.dart';
import 'package:laza/features/auth/presentation/widgets/remember_me_switch.dart';
import 'package:laza/features/auth/presentation/widgets/sign_up_form_container.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
                      Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Sign Up', style: AppFonts.styleBold34),
                            SizedBox(height: 8.h),
                          ],
                        ),
                      ),
                      SizedBox(height: 80.h),
                      const SignUpFormContainer(),
                      SizedBox(height: 30.h),
                      RememberMeSwitch(value: true, onChanged: (value) {}),
                      SizedBox(height: 160.h),
                      Center(
                        child: CustomRichText(
                          textAlign: TextAlign.center,
                          normalText: 'Already have an account? ',
                          highlightedText: 'Signin',
                          onTap: () {
                            context.pushNamed(Routes.loginScreen);
                          },
                        ),
                      ),
                      SizedBox(height: 20.h),
                    ],
                  ),
                ),
              ),
            ),
            CustomElevatedButton(text: 'Sign Up', onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
