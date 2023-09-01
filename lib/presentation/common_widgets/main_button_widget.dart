import 'package:comit_quiz/constants/palette.dart';
import 'package:flutter/material.dart';
import 'package:comit_quiz/constants/app_text_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainButtonWidget extends StatelessWidget {
  const MainButtonWidget({
    super.key,
    required this.onPressed,
    required this.title,
  });
  final VoidCallback onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(
          horizontal: 40.w,
          vertical: 18.h,
        ),
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style: AppTextStyle.mainBtn.copyWith(
          color: Palette.purple10,
        ),
      ),
    );
  }
}
