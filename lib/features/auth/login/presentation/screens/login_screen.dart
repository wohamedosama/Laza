import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza/core/helpers/extension.dart';
import 'package:laza/core/helpers/flutter_toast.dart';
import 'package:laza/core/routing/routes.dart';
import 'package:laza/core/widgets/custom_animated_loading_indicator.dart';
import 'package:laza/core/widgets/custom_arrow_back_button.dart';
import 'package:laza/core/widgets/custom_elevated_button.dart';
import 'package:laza/core/widgets/custom_rich_text.dart';
import 'package:laza/core/widgets/remember_me_switch.dart';
import 'package:laza/features/auth/login/data/model/login_model_request.dart';
import 'package:laza/features/auth/login/presentation/cubit/login_cubit.dart';
import 'package:laza/features/auth/login/presentation/cubit/login_state.dart';
import 'package:laza/features/auth/login/presentation/widgets/foreget_password_button.dart';
import 'package:laza/features/auth/login/presentation/widgets/login_form_container.dart';
import 'package:laza/features/auth/login/presentation/widgets/login_welcome_header.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController? emailController = TextEditingController();
  final TextEditingController? passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
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
          success: (loginModelResponse) {
            Navigator.pop(context); // Dismiss loading dialog
            ShowFlutterToast.showToast(
              message: 'Login successful',
              state: ToastState.success,
            );
            context.pushNamed(Routes.home);
          },
          error: (message) {
            Navigator.pop(context); // Dismiss loading dialog
            ShowFlutterToast.showToast(
              message: message,
              state: ToastState.error,
            );
          },
        );
      },
      builder: (context, state) {
        return Scaffold(
          resizeToAvoidBottomInset: true,
          body: Form(
            key: formKey,
            child: SafeArea(
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
                            LoginFormContainer(
                              emailController: emailController,
                              passwordController: passwordController,
                            ),
                            SizedBox(height: 20.h),
                            const ForgetPasswordButton(),
                            SizedBox(height: 20.h),
                            RememberMeSwitch(
                              value: true,
                              onChanged: (value) {},
                            ),
                            SizedBox(height: 100.h),
                            const CustomRichText(
                              normalText:
                                  'By connecting your account confirm that you agree with our ',
                              highlightedText: 'Term and Condition',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  CustomElevatedButton(
                    text: 'Login',
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        BlocProvider.of<LoginCubit>(context).login(
                          LoginModelRequest(
                            email: emailController!.text,
                            password: passwordController!.text,
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
