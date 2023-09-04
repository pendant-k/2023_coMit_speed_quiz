import 'package:comit_quiz/constants/app_text_styles.dart';
import 'package:comit_quiz/constants/gaps.dart';
import 'package:comit_quiz/constants/palette.dart';
import 'package:comit_quiz/presentation/common_widgets/main_button_widget.dart';
import 'package:comit_quiz/presentation/common_widgets/second_button_widget.dart';
import 'package:comit_quiz/presentation/leaderboard/leaderboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../quiz/quiz_screen.dart';

// TODO : implement fonts

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/Comit_logo.png',
                width: 191.w,
                height: 219.h,
              ),
              Text(
                'COM!T QUIZ',
                style: AppTextStyle.choice.copyWith(
                  fontFamily: 'Gmarket',
                  fontWeight: FontWeight.bold,
                  fontSize: 32.spMin,
                ),
              ),
              gap64h,
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  MainButtonWidget(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const QuizScreen(),
                        ),
                      );
                    },
                    title: 'START',
                  ),
                  // gap34w,
                  // SecondButtonWidget(
                  //   onPressed: () {
                  //     Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //         builder: (context) => const LeaderBoardScreen(),
                  //       ),
                  //     );
                  //   },
                  //   title: 'Go to Leaderboard',
                  // ),
                ],
              ),
            ],
          ),
        ));
  }
}
