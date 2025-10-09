import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza/core/helpers/extension.dart';
import 'package:laza/core/helpers/flutter_toast.dart';
import 'package:laza/core/routing/routes.dart';
import 'package:laza/core/theme/app_fonts.dart';
import 'package:laza/core/widgets/custom_animated_loading_indicator.dart';
import 'package:laza/core/widgets/custom_arrow_back_button.dart';
import 'package:laza/core/widgets/custom_elevated_button.dart';
import 'package:laza/core/widgets/custom_rich_text.dart';
import 'package:laza/core/widgets/remember_me_switch.dart';
import 'package:laza/features/auth/signup/data/model/signup_model_request.dart';
import 'package:laza/features/auth/signup/presentation/cubit/singup_cubit.dart';
import 'package:laza/features/auth/signup/presentation/cubit/singup_state.dart';
import 'package:laza/features/auth/signup/presentation/widgets/sign_up_form_container.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController? emailController = TextEditingController();
  final TextEditingController? usernameController = TextEditingController();
  final TextEditingController? passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SingupCubit, SingupState>(
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialog(
              context: context,
              barrierDismissible: false,
              builder: (context) => const PopScope(
                canPop: false,
                child: CustomAnimatedLoadingIndicator(),
              ),
            );
          },
          success: (response) {
            Navigator.pop(context); // Dismiss loading dialog
            ShowFlutterToast.showToast(
              message: response.message,
              state: ToastState.success,
            );
            // TODO: Navigate to verify email screen
            context.pushNamed(Routes.home);
          },
          failure: (message) {
            Navigator.pop(context); // Dismiss loading dialog
            ShowFlutterToast.showToast(
              message: message,
              state: ToastState.error,
            );
          },
        );
      },
      builder: (context, state) {
        return Form(
          key: formKey,
          child: Scaffold(
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
                            SignUpFormContainer(
                              usernameController: usernameController,
                              passwordController: passwordController,
                              emailController: emailController,
                            ),
                            SizedBox(height: 30.h),
                            RememberMeSwitch(
                              value: true,
                              onChanged: (value) {},
                            ),
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
                  CustomElevatedButton(
                    text: 'Sign Up',
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        BlocProvider.of<SingupCubit>(context).signup(
                          SignupModelRequest(
                            firstName: usernameController!.text,
                            lastName: usernameController!.text,
                            password: passwordController!.text,
                            email: emailController!.text,
                          ),
                        );
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
