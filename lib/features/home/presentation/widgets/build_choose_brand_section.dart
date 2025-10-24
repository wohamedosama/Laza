import 'package:flutter/widgets.dart';
import 'package:laza/core/theme/app_color.dart';
import 'package:laza/core/theme/app_fonts.dart';
import 'package:laza/features/home/presentation/constants/home_constants.dart';

class BuildChooseBrandSection extends StatelessWidget {
  const BuildChooseBrandSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(HomeConstants.chooseBrandText, style: AppFonts.styleMedium17),
        Text(
          HomeConstants.viewAllText,
          style: AppFonts.styleRegular15.copyWith(color: AppColors.darkSurface),
        ),
      ],
    );
  }
}
