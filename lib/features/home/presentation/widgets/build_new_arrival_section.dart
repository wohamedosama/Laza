import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza/core/theme/app_color.dart';
import 'package:laza/core/theme/app_fonts.dart';
import 'package:laza/features/home/presentation/constants/home_constants.dart';
import 'package:laza/features/home/presentation/widgets/build_product_card.dart';

class BuildNewArrivalSection extends StatelessWidget {
  const BuildNewArrivalSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(HomeConstants.newArrivalText, style: AppFonts.styleMedium17),
            Text(
              HomeConstants.viewAllText,
              style: AppFonts.styleRegular15.copyWith(
                color: AppColors.darkSurface,
              ),
            ),
          ],
        ),
        SizedBox(height: HomeConstants.defaultSpacing.h),
        Expanded(
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: HomeConstants.gridCrossAxisCount,
              crossAxisSpacing: HomeConstants.defaultSpacing.w,
              mainAxisSpacing: HomeConstants.defaultSpacing.h,
              childAspectRatio: HomeConstants.productCardAspectRatio,
            ),
            itemCount: HomeConstants.products.length,
            itemBuilder: (context, index) {
              return BuildProductCard(index: index);
            },
          ),
        ),
      ],
    );
  }
}
