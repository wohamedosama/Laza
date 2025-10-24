import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza/features/home/presentation/constants/home_constants.dart';
import 'package:laza/features/home/presentation/widgets/build_brand_list.dart';
import 'package:laza/features/home/presentation/widgets/build_choose_brand_section.dart';
import 'package:laza/features/home/presentation/widgets/build_new_arrival_section.dart';
import 'package:laza/features/home/presentation/widgets/custom_search_bar.dart';
import 'package:laza/features/home/presentation/widgets/home_header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 20.0.w,
                right: 20.0.w,
                top: 20.0.h,
              ),
              child: Column(
                children: [
                  const HomeHeader(),
                  SizedBox(height: 20.h),
                  Container(
                    height: 50.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: const CustomSearchBar(),
                  ),
                  SizedBox(height: 20.0.h),
                  const BuildChooseBrandSection(),
                  SizedBox(height: 15.0.h),
                  const BuildBrandList(),
                ],
              ),
            ),
            SizedBox(height: HomeConstants.defaultSpacing.h),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: HomeConstants.defaultPadding.w,
                ),
                child: const BuildNewArrivalSection(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
