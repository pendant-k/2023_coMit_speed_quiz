import 'package:comit_quiz/constants/app_text_styles.dart';
import 'package:comit_quiz/constants/palette.dart';
import 'package:comit_quiz/presentation/common_widgets/main_button_widget.dart';
import 'package:comit_quiz/presentation/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LeaderBoardForm extends StatefulWidget {
  const LeaderBoardForm({super.key, required this.score});
  final int score;

  @override
  State<LeaderBoardForm> createState() => _LeaderBoardFormState();
}

class _LeaderBoardFormState extends State<LeaderBoardForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 180.w,
              height: 180.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Palette.purple90,
                border: Border.all(
                  color: Palette.purple10,
                  width: 10,
                ),
              ),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      (widget.score).toString(),
                      style: AppTextStyle.mainBtn.copyWith(
                          fontSize: 62.spMin, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'YOUR SCORE',
                      style: AppTextStyle.mainBtn.copyWith(
                          fontSize: 12.spMin, fontWeight: FontWeight.bold),
                    ),
                  ]),
            ),
            SizedBox(
              height: 27.h,
            ),
            Text(
              '퀴즈 참여 완료!',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Gmarket',
                fontSize: 32.spMin,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 100.h,
            ),
            MainButtonWidget(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()));
                },
                title: '메인으로')
          ],
        ),
      ),
    );
  }
}
