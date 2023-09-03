import 'package:comit_quiz/constants/gaps.dart';
import 'package:comit_quiz/constants/palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserScoreField extends StatelessWidget {
  const UserScoreField({
    Key? key,
    required this.title,
    required this.rank,
    required this.score,
    this.intoplist = false,
  }) : super(key: key);

  final String title;
  final int rank;
  final int score;
  final bool intoplist;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 242.w,
      height: 49.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(999.spMin),
        color: intoplist ? Palette.purple60 : Colors.white,
      ),
      child: Row(
        children: [
          gap24w,
          Container(
            child: Text("$rank"),
          ),
          Text(title),
          Container(
            child: Text("$score"),
          ),
          gap14w,
        ],
      ),
    );
  }
}
