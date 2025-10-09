import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza/core/routing/app_router.dart';
import 'package:laza/core/routing/routes.dart';
import 'package:laza/core/theme/app_theme.dart';

class LazaApplication extends StatelessWidget {
  const LazaApplication({super.key, required this.appRouter});
  final AppRouter appRouter;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: appRouter.onGenerateRoute,
        initialRoute: Routes.onBoardingScreen,
        theme: AppTheme.lightTheme,
      ),
    );
  }
}
