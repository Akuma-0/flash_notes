import 'package:flash_notes/core/theme/color_manager.dart';
import 'package:flash_notes/core/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TitleField extends StatelessWidget {
  const TitleField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(borderSide: BorderSide.none),
        hint: Text(
          'Title',
          style: TextStyles.font48W400.copyWith(color: ColorManager.grey68),
        ),
      ),
      cursorColor: ColorManager.black,
      cursorHeight: 40.h,
      maxLines: 2,
      minLines: 1,
      style: TextStyles.font48W400,
    );
  }
}
