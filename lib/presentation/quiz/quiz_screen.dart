import 'package:comit_quiz/constants/app_text_styles.dart';
import 'package:comit_quiz/constants/palette.dart';
import 'package:comit_quiz/domain/question.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/gaps.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  // get question list

  // shuffle question list and set to questions

  List<Question> questions = [
    const Question(
      id: 0,
      type: QuestionType.choices,
      body: 'question example',
      answer: "0",
    )
  ];

  // current question index
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
    // 정답인지 확인
    // 맞으면 answerCount + 1
    // 다음 문제로 넘어가기
    // 틀리면 다음 문제로 넘어가기
    // 다음 문제가 없으면 결과 페이지로 넘어가기
  }

  // 현재 문제의 type에 따라서 적절한 widget build
  Widget buildAnswerWidgets(QuestionType type) {
    switch (type) {
      case QuestionType.choices:
        return Wrap(
          children: [],
        );
      case QuestionType.shortAnswer:
        return TextField();
      case QuestionType.ox:
        return Row(
          children: [],
        );
      default:
        return const SizedBox();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        leading: const SizedBox(),
        title: Padding(
          padding: EdgeInsets.only(left: 252.w),
          child: const Text('Logo'),
        ),
      ),
      body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
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
                height: 200.h,
                padding: EdgeInsets.symmetric(horizontal: 96.w, vertical: 48.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  color: Palette.purple95,
                ),
                child: Text(
                  // question text
                  questions[currentIndex].body,
                  textAlign: TextAlign.center,
                  style: AppTextStyle.question,
                ),
              ),
              gap70h,
              // select answer side
              buildAnswerWidgets(questions[currentIndex].type),
            ],
          )),
    );
  }
}
