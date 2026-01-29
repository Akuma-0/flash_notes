import 'package:flash_notes/core/routing/routes.dart';
import 'package:flash_notes/core/theme/color_manager.dart';
import 'package:flash_notes/core/theme/text_styles.dart';
import 'package:flash_notes/features/home/ui/widgets/empty_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Notes',
          style: TextStyles.font30W400.copyWith(fontFamily: 'Otama'),
        ),
      ),
      body: EmptyHome(),
      floatingActionButton: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, Routes.addNote);
        },
        style: ElevatedButton.styleFrom(
          shape: CircleBorder(),
          backgroundColor: ColorManager.green,
          minimumSize: Size(70.w, 70.h),
          elevation: 10,
        ),
        child: Icon(Icons.add, size: 35.sp, color: ColorManager.white),
      ),
    );
  }
}
