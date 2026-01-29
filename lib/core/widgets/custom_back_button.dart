import 'package:flash_notes/core/theme/text_styles.dart';
import 'package:flutter/material.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key, required this.onPressed});
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Row(
        children: [
          Icon(Icons.arrow_back_ios),
          Text(
            'Back',
            style: TextStyles.font20W400.copyWith(fontFamily: 'Otama'),
          ),
        ],
      ),
    );
  }
}
