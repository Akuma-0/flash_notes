import 'package:flash_notes/core/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmptyHome extends StatelessWidget {
  const EmptyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/temp.png',
                width: 350.w,
                height: 286.h,
                fit: BoxFit.cover,
              ),
              Text(
                'Create your first note !',
                style: TextStyles.font20W400.copyWith(fontFamily: 'Otama'),
              ),
            ],
          ),
        ),
      );
  }
}