import 'package:flash_notes/core/widgets/action_button.dart';
import 'package:flash_notes/core/widgets/body_field.dart';
import 'package:flash_notes/core/widgets/custom_back_button.dart';
import 'package:flash_notes/core/widgets/title_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddNoteScreen extends StatelessWidget {
  const AddNoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: CustomBackButton(
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          ActionButton(
            onPressed: () {},
            icon: Icons.check_circle_outline_outlined,
          ),
          SizedBox(width: 15.w),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TitleField(),
              SizedBox(height: 40.h),
              BodyField(),
            ],
          ),
        ),
      ),
    );
  }
}
