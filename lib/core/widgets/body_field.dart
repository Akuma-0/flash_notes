import 'package:flash_notes/core/theme/color_manager.dart';
import 'package:flash_notes/core/theme/text_styles.dart';
import 'package:flutter/material.dart';

class BodyField extends StatelessWidget {
  const BodyField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                  hint: Text(
                    'Type something...',
                    style: TextStyles.font23W400.copyWith(
                      color: ColorManager.grey68,
                    ),
                  ),
                ),
                style: TextStyles.font23W400,
                textInputAction: TextInputAction.newline,
                maxLines: null,
                cursorColor: ColorManager.black,
              );
  }
}