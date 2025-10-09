import 'package:flutter/material.dart';
import 'package:laza/core/theme/app_color.dart';
import 'package:laza/core/theme/app_fonts.dart';

class RememberMeSwitch extends StatelessWidget {
  const RememberMeSwitch({
    super.key,
    required this.value,
    required this.onChanged,
    this.label = 'Remember me',
    this.activeThumbColor,
    this.inactiveThumbColor,
  });

  final bool value;
  final ValueChanged<bool> onChanged;
  final String label;
  final Color? activeThumbColor;
  final Color? inactiveThumbColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, style: AppFonts.styleMedium15),
        Switch(
          value: value,
          onChanged: onChanged,
          activeThumbColor: activeThumbColor ?? AppColors.darkNavy,
          inactiveThumbColor: inactiveThumbColor ?? AppColors.mediumGray,
        ),
      ],
    );
  }
}
