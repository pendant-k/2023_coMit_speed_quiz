import 'package:comit_quiz/constants/gaps.dart';
import 'package:comit_quiz/constants/palette.dart';
import 'package:comit_quiz/presentation/common_widgets/second_button_widget.dart';
import 'package:comit_quiz/presentation/leaderboard/leaderboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class LeaderBoardForm extends StatefulWidget {
  const LeaderBoardForm({super.key});

  @override
  State<LeaderBoardForm> createState() => _LeaderBoardFormState();
}

class _LeaderBoardFormState extends State<LeaderBoardForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(),
        Text(
          '퀴즈 참여 완료!',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Gmarket',
            fontSize: 32.spMin,
            fontWeight: FontWeight.w500,
          ),
        ),
        gap6h,
        Text(
          '이름과 전화번호를 제출하시고 순위를 확인하세요!',
          style: TextStyle(
            fontFamily: 'Gmarket',
            fontSize: 16.spMin,
            fontWeight: FontWeight.w500,
          ),
        ),
        gap31h,
        Container(
          width: 935.w,
          height: 195.h,
          color: Palette.purple95,
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    '이름',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Noto Sans KR', //글씨체 수정해야함
                      fontSize: 32.spMin,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text('이름'),
                ],
              )
            ],
          ),
        ),
        gap43h,
        SecondButtonWidget(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const LeaderBoardScreen(),
              ),
            );
          },
          title: '제출하기',
        ),


      ],
    );
  }
}
