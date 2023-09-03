import 'package:comit_quiz/constants/gaps.dart';
import 'package:comit_quiz/constants/palette.dart';
import 'package:comit_quiz/presentation/common_widgets/second_button_widget.dart';
import 'package:comit_quiz/presentation/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:comit_quiz/presentation/leaderboard/user_scorefield.dart';

class LeaderBoardScreen extends StatefulWidget {
  const LeaderBoardScreen({super.key});

  @override
  State<LeaderBoardScreen> createState() => _LeaderBoardScreenState();
}

class _LeaderBoardScreenState extends State<LeaderBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'LEADERBOARD',
              style: TextStyle(
                fontFamily: 'Gmarket',
                fontSize: 32.spMin,
                fontWeight: FontWeight.w500,
                letterSpacing: 1.6,
              ),
            ),
            gap30h,
            Container(
              width: 792.w,
              height: 400.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.spMin),
                color: Palette.purple95,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        UserScoreField(title: 'asd', rank: 1, score: 3),
                        gap15h,
                        UserScoreField(title: 'asd', rank: 1, score: 3),
                        gap15h,
                        UserScoreField(title: 'asd', rank: 1, score: 3),
                        gap15h,
                        UserScoreField(title: 'asd', rank: 1, score: 3),
                        gap15h,
                        UserScoreField(title: 'asd', rank: 1, score: 3),
                      ]),
                  gap106w,
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        UserScoreField(
                          title: 'asd',
                          rank: 1,
                          score: 3,
                          intoplist: true,
                        ),
                        gap15h,
                        UserScoreField(title: 'asd', rank: 1, score: 3),
                        gap15h,
                        UserScoreField(title: 'asd', rank: 1, score: 3),
                        gap15h,
                        UserScoreField(title: 'asd', rank: 1, score: 3),
                        gap15h,
                        UserScoreField(title: 'asd', rank: 1, score: 3),
                      ]),
                ],
              ),
            ),
            gap50h,
            SecondButtonWidget(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                  ),
                );
              },
              title: '처음으로 돌아가기',
            ),
          ],
        ),
      ),
    );
  }
}
