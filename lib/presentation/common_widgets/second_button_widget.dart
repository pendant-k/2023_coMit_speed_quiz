import 'package:comit_quiz/constants/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/palette.dart';

class SecondButtonWidget extends StatelessWidget {
  const SecondButtonWidget({
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
        side: const BorderSide(
          width: 2.0,
          color: Palette.purple40,
        ),
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style: AppTextStyle.mainBtn,
      ),
    );
  }
}
