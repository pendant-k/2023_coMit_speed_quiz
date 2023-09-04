import 'package:comit_quiz/constants/palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextStyle {
  // TODO : font 적용하기
  static final mainBtn = TextStyle(
    fontSize: 24.spMin,
    fontFamily: 'Gmarket',
    fontWeight: FontWeight.w700,
    color: Palette.purple40,
    letterSpacing: 0.1,
  );
  static final question = TextStyle(
    fontSize: 24.spMin,
    fontWeight: FontWeight.w500,
    color: Colors.black,
    letterSpacing: 0.1,
  );

  static final choice = TextStyle(
    fontSize: 22.spMin,
    fontWeight: FontWeight.w700,
  );
}
