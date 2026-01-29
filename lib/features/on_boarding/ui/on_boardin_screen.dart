import 'package:flash_notes/core/routing/routes.dart';
import 'package:flash_notes/core/theme/color_manager.dart';
import 'package:flash_notes/core/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardinScreen extends StatelessWidget {
  const OnBoardinScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/temp.png'),
                SizedBox(height: 55.h),
                Text(
                  'All thoughts. One place.',
                  style: TextStyles.font48W400.copyWith(fontFamily: 'Otama'),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20.h),
                Text(
                  'Dive right in and clear that mind of yours by writing your thoughts down.',
                  style: TextStyles.font16W400,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 40.h),
                IconButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, Routes.home);
                  },
                  icon: Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: ColorManager.white,
                    size: 20.sp,
                  ),
                  style: IconButton.styleFrom(
                    minimumSize: Size(75.w, 75.h),
                    shape: CircleBorder(),
                    backgroundColor: ColorManager.green,
                    focusColor: ColorManager.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
