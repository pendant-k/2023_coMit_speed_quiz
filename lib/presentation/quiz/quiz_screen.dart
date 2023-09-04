import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:comit_quiz/constants/app_text_styles.dart';
import 'package:comit_quiz/constants/palette.dart';
import 'package:comit_quiz/constants/questions.dart';
import 'package:comit_quiz/domain/question.dart';
import 'package:comit_quiz/presentation/common_widgets/second_button_widget.dart';
import 'package:comit_quiz/presentation/form/leaderboard_form.dart';
import 'package:comit_quiz/utils/shuffle_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/gaps.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  final CountDownController _controller = CountDownController();

  // get question list

  // shuffle question list and set to questions

  // question list
  // 랜덤한 순서로 셔플하기
  final List<Question> shuffledQuestions = questions;

  var currentIndex = 0;

  // 맞춘 문제 개수
  var answerCount = 0;

  var selectedAnswer = "";

  // state 초기화
  resetStates() {
    setState(() {
      selectedAnswer = "";
    });
  }

  submitAnswer() {
    if (selectedAnswer == shuffledQuestions[currentIndex].answer) {
      answerCount++;
    }
    if (shuffledQuestions.length > currentIndex + 1) {
      currentIndex++;
      resetStates();
    } else {
      // 결과 페이지로 넘어가기
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => LeaderBoardForm(
                    score: answerCount,
                  )));
    }
    // 정답인지 확인
    // 맞으면 answerCount + 1
    // 다음 문제로 넘어가기
    // 틀리면 다음 문제로 넘어가기
    // 다음 문제가 없으면 결과 페이지로 넘어가기
  }

  // 현재 문제의 type에 따라서 적절한 widget build
  Widget buildAnswerWidgets(Question question) {
    switch (question.type) {
      case QuestionType.choices:
        return Wrap(
          spacing: 51.w,
          runSpacing: 50.h,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedAnswer = "1";
                });
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40.r),
                  color: selectedAnswer == "1"
                      ? Palette.purple80
                      : Colors.transparent,
                ),
                child: Text(
                  "① ${question.choices![0]}",
                  style: AppTextStyle.choice,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedAnswer = "2";
                });
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40.r),
                  color: selectedAnswer == "2"
                      ? Palette.purple80
                      : Colors.transparent,
                ),
                child: Text(
                  "② ${question.choices![1]}",
                  style: AppTextStyle.choice,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedAnswer = "3";
                });
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40.r),
                  color: selectedAnswer == "3"
                      ? Palette.purple80
                      : Colors.transparent,
                ),
                child: Text(
                  "③ ${question.choices![2]}",
                  style: AppTextStyle.choice,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedAnswer = "4";
                });
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40.r),
                  color:
                      selectedAnswer == "4" ? Palette.purple80 : Colors.white,
                ),
                child: Text(
                  "④ ${question.choices![3]}",
                  style: AppTextStyle.choice,
                ),
              ),
            ),
          ],
        );
      case QuestionType.shortAnswer:
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '답 : ',
              style: AppTextStyle.choice,
            ),
            gap34w,
            SizedBox(
              width: 480.w,
              height: 56.h,
              child: TextField(
                autocorrect: false,
                autofocus: true,
                onChanged: (value) {
                  setState(() {
                    selectedAnswer = value;
                  });
                },
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Palette.purple95, width: 2),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Palette.purple40, width: 2),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),
              ),
            ),
          ],
        );
      case QuestionType.ox:
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedAnswer = "o";
                });
              },
              child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    color: selectedAnswer == "o"
                        ? Palette.purple80
                        : Palette.purple95,
                  ),
                  child: Icon(
                    Icons.circle_outlined,
                    size: 55.w,
                    color: Palette.purple10,
                    grade: 10,
                  )),
            ),
            SizedBox(
              width: 30.w,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedAnswer = "x";
                });
              },
              child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    color: selectedAnswer == "x"
                        ? Palette.purple80
                        : Palette.purple95,
                  ),
                  child: Icon(
                    Icons.close_outlined,
                    size: 55.w,
                    color: Palette.purple10,
                    grade: 10,
                  )),
            ),
          ],
        );
      default:
        return const SizedBox();
    }
  }

  @override
  void initState() {
    shuffledQuestions.shuffle();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          centerTitle: false,
          leading: const SizedBox(),
          title: Image.asset(
            'assets/images/Header.png',
            height: 60.h,
          )),
      body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircularCountDownTimer(
                width: 100.w,
                height: 100.w,
                duration: 40,
                fillColor: Palette.purple80,
                ringColor: Palette.purple10,
                isReverse: true,
                textStyle: TextStyle(
                  fontFamily: "Gmarket",
                  fontWeight: FontWeight.bold,
                  fontSize: 30.spMin,
                ),
                onComplete: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LeaderBoardForm(
                                score: answerCount,
                              )));
                },
              ),
              gap15h,
              Text(
                'Q${currentIndex + 1}.',
                textAlign: TextAlign.center,
                style: AppTextStyle.mainBtn.copyWith(
                  color: Colors.black,
                  fontSize: 32.spMin,
                ),
              ),
              gap30h,
              Container(
                width: 936.w,
                padding: EdgeInsets.symmetric(horizontal: 96.w, vertical: 48.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  color: Palette.purple95,
                ),
                child: Text(
                  // question text
                  shuffledQuestions[currentIndex].body,
                  textAlign: TextAlign.center,
                  style: AppTextStyle.question,
                ),
              ),
              gap70h,
              // select answer side
              buildAnswerWidgets(shuffledQuestions[currentIndex]),
              SizedBox(height: 100.h),
              SecondButtonWidget(
                  onPressed: () {
                    submitAnswer();
                  },
                  title: '제출하기'),
            ],
          )),
    );
  }
}
