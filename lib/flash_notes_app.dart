import 'package:flash_notes/core/routing/app_router.dart';
import 'package:flash_notes/core/routing/routes.dart';
import 'package:flash_notes/core/theme/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FlashNotesApp extends StatelessWidget {
  const FlashNotesApp({super.key, required this.appRouter});
  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flash Notes',
        onGenerateRoute: appRouter.onGenerateRoute,
        initialRoute: Routes.onBoarding,
        theme: ThemeData(
          scaffoldBackgroundColor: ColorManager.white,
          appBarTheme: AppBarTheme(
            scrolledUnderElevation: 0,
            elevation: 0,
            backgroundColor: ColorManager.white,
            foregroundColor: ColorManager.green,
          ),
        ),
      ),
    );
  }
}
