import 'package:flash_notes/core/theme/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({super.key, required this.onPressed, required this.icon});
  final VoidCallback onPressed;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(icon, color: ColorManager.white),
      style: IconButton.styleFrom(
        minimumSize: Size(33.w, 33.h),
        backgroundColor: ColorManager.green,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
      ),
    );
  }
}
