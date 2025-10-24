import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza/core/helpers/extension.dart';
import 'package:laza/core/helpers/flutter_toast.dart';
import 'package:laza/core/networking/network_exceptions.dart';
import 'package:laza/core/routing/routes.dart';
import 'package:laza/core/theme/app_assets.dart';
import 'package:laza/core/theme/app_fonts.dart';
import 'package:laza/core/widgets/custom_animated_loading_indicator.dart';
import 'package:laza/core/widgets/custom_arrow_back_button.dart';
import 'package:laza/core/widgets/custom_elevated_button.dart';
import 'package:laza/core/widgets/custom_rich_text.dart';
import 'package:laza/features/auth/verify_email/data/model/verify_email_mode_request.dart';
import 'package:laza/features/auth/verify_email/presentation/cubit/verify_email_cubit.dart';
import 'package:laza/features/auth/verify_email/presentation/cubit/verify_email_state.dart';
import 'package:laza/features/auth/verify_email/presentation/widgets/custom_pin_code_field.dart';

class VerifyEmailScreen extends StatefulWidget {
  const VerifyEmailScreen({super.key, required this.email});
  final String email;

  @override
  State<VerifyEmailScreen> createState() => _VerifyEmailScreenState();
}

final TextEditingController otpCodeController = TextEditingController();
final GlobalKey<FormState> formKey = GlobalKey<FormState>();

class _VerifyEmailScreenState extends State<VerifyEmailScreen> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: BlocListener<VerifyEmailCubit, VerifyEmailState>(
          listener: (context, state) {
            state.mapOrNull(
              loading: (value) {
                showDialog(
                  context: context,
                  barrierDismissible: false,
                  builder: (context) => const PopScope(
                    canPop: false,
                    child: CustomAnimatedLoadingIndicator(),
                  ),
                );
              },
              success: (value) {
                Navigator.pop(context); // Dismiss loading dialog
                ShowFlutterToast.showToast(
                  message: 'Email verified successfully',
                  state: ToastState.success,
                );
                // Go to login instead of home to test if email is verified
                context.pushNamedAndRemoveUntil(
                  Routes.loginScreen,
                  (route) => false,
                );
              },
              error: (value) {
                Navigator.pop(context); // Dismiss loading dialog
                ShowFlutterToast.showToast(
                  message: NetworkExceptions.getErrorMessage(value.message),
                  state: ToastState.error,
                );
              },
            );
          },
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
                          Center(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Verification Code',
                                  style: AppFonts.styleBold34,
                                ),
                                SizedBox(height: 8.h),
                              ],
                            ),
                          ),
                          SizedBox(height: 60.h),
                          Image.asset(
                            AppAssets.assetsImagesForgetPassword,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(height: 40.h),
                          CustomPinCodeField(
                            controller: otpCodeController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter OTP code';
                              }
                              if (value.length != 6) {
                                return 'OTP must be 6 digits';
                              }
                              return null;
                            },

                            onCompleted: (value) {
                              confirmCode(context);
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Center(
                  child: CustomRichText(
                    textAlign: TextAlign.center,
                    highlightedText: '00:20 ',
                    normalText: 'resend confirmation code.',
                    onTap: () {
                      // Todo call the same method to resend the code again
                    },
                  ),
                ),
                SizedBox(height: 20.h),
                CustomElevatedButton(
                  text: 'Confirm Code',
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      BlocProvider.of<VerifyEmailCubit>(context).verifyEmail(
                        VerifyEmailModelRequest(
                          otpCode: otpCodeController.text,
                          email: widget.email,
                        ),
                      );
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void confirmCode(BuildContext context) {
    if (formKey.currentState!.validate()) {
      BlocProvider.of<VerifyEmailCubit>(context).verifyEmail(
        VerifyEmailModelRequest(
          otpCode: otpCodeController.text,
          email: widget.email,
        ),
      );
    } else {}
  }
}
