import 'package:flutter/material.dart';
import 'package:laza/core/theme/app_color.dart';
import 'package:laza/core/theme/app_fonts.dart';

class CustomRichText extends StatelessWidget {
  const CustomRichText({
    super.key,
    required this.normalText,
    required this.highlightedText,
    this.textAlign = TextAlign.center,
    this.normalTextStyle,
    this.highlightedTextStyle,
    this.normalTextColor,
    this.highlightedTextColor,
    this.onTap,
  });

  final String normalText;
  final String highlightedText;
  final TextAlign textAlign;
  final TextStyle? normalTextStyle;
  final TextStyle? highlightedTextStyle;
  final Color? normalTextColor;
  final Color? highlightedTextColor;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: RichText(
        textAlign: textAlign,
        text: TextSpan(
          children: [
            TextSpan(
              text: normalText,
              style:
                  normalTextStyle ??
                  AppFonts.styleRegular15.copyWith(
                    color: normalTextColor ?? AppColors.darkSurface,
                  ),
            ),
            TextSpan(
              text: highlightedText,
              style:
                  highlightedTextStyle ??
                  AppFonts.styleMedium15.copyWith(
                    color: highlightedTextColor ?? AppColors.darkNavy,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
