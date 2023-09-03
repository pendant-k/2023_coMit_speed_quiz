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
      id: 1,
      type: QuestionType.ox,
      body: '코밋 홈페이지는 크리스마스 당일에 완성되었다.',
      answer: "o",
    ),
    const Question(
      id: 2,
      type: QuestionType.choices,
      body: '저번학기 (2023-1) CoMit이 진행했던 활동은 무엇일까요?',
      answer: "4", // 보기: 개강총회, 종강총회, OT, 전부
    ),
    const Question(
      id: 3,
      type: QuestionType.shortAnswer,
      body: 'CoMit 홈페이지가 완성된 년도는 언제일까요?(숫자로만)',
      answer: "2021",
    ),
    const Question(
      id: 4,
      type: QuestionType.shortAnswer,
      body: '동아리 이름인 CoMit은 Coding과 영어 단어 하나를 합쳐 만들었습니다.'
          ' 이 단어는 무엇일까요?',
      answer: "summit",
    ),
    const Question(
      id: 5,
      type: QuestionType.ox,
      body: 'CoMit은 누구나 스터디를 열어 다른 사람들과 함께 진행할 수 있으며,'
          ' 선발 방식과 인원 수에 제한은 없다.',
      answer: "x",
    ),
    const Question(
      id: 6,
      type: QuestionType.choices,
      body: '파이썬 로고에 형상되어 있는 동물은 무엇일까요?',
      answer: "4", //보기: 거북이, 용, 사자, 뱀
    ),
    const Question(
      id: 7,
      type: QuestionType.shortAnswer,
      body: '주어진 수들 중에서 짝수의 합을 계산하는 프로그램을 만드려고 합니다.'
          ' 다음 빈칸에 들어갈 코드는 무엇일까요?\n'
          'for num in numbers:\n'
          '  if num % 2 != 0:\n'
          '     ______\n'
          '     sum += num',
      answer: "continue",
    ),
    const Question(
      id: 8,
      type: QuestionType.ox,
      body: 'Java Script는 Java의 업그레이드 버전이다.',
      answer: "x",
    ),
    const Question(
      id: 9,
      type: QuestionType.choices,
      body: ' 파이썬 공식문서에서 권장하는 문법규칙이 아닌 것을 고르세요.',
      answer: "2",
      // 보기
      // 1. 한 줄은 79글자로 제한하기
      // 2. import는 파일의 맨 아래 적고 내장 모듈, 제3자 모듈, 직접 만든 모듈 순서로 불러들이기
      // 3. 인스턴스 메서드의 첫 인자는 self로 쓰고, 클래스 메서드의 첫 인자는 cls로 쓰기
      // 4. 할당 연산자(=)의 앞뒤로 공백 넣기
    ),
    const Question(
      id: 10,
      type: QuestionType.choices,
      body: '파이썬이 최초 공개된 출시년도는 언제일까요?',
      answer: "2", //보기: 1987, 1991, 1998, 2002
    ),
    const Question(
      id: 11,
      type: QuestionType.choices,
      body: '코밋동아리의 회장 이름은 무엇일까요?',
      answer: "3", //보기: 박지현, 박지환, 박태곤, 박지훈
    ),
    const Question(
      id: 12,
      type: QuestionType.ox,
      body: 'Comit은 Coding summit의 줄임말이다. ',
      answer: "o",
    ),
    const Question(
      id: 13,
      type: QuestionType.choices,
      body: '현재 코밋동아리에서 다루지 않는 언어는 무엇일까요?',
      answer: "4", //보기: HTML, CSS, Javascript, Python
    ),
    const Question(
      id: 14,
      type: QuestionType.ox,
      body: '코밋동아리 인스타 계정 아이디는 comit_skku이다.',
      answer: "x",
    ),
    const Question(
      id: 15,
      type: QuestionType.choices,
      body: 'Comit 동아리방 위치는 어디일까요?',
      answer: "3",
      //보기
      // 1. 인문사회과학캠퍼스 - 600주년기념관
      // 2. 자연과학캠퍼스 - 삼성학술정보관
      // 3. 자연과학캠퍼스 - 학생회관
      // 4. 인문사회과학캠퍼스 - 수선관
    ),
    const Question(
      id: 16,
      type: QuestionType.ox,
      body: '열린 스터디클럽 중에 ‘앱 개발’이 포함되어 있다.',
      answer: "o",
    ),
    const Question(
      id: 17,
      type: QuestionType.ox,
      body: ' C언어는 B언어 이후라서 C언어이다.',
      answer: "o",
    ),
    const Question(
      id: 18,
      type: QuestionType.choices,
      body: '성균관대학교에 포함되지 않는 한자는 무엇일까요?',
      answer: "4", //보기: 均, 館, 成, 旬
    ),
    const Question(
      id: 19,
      type: QuestionType.choices,
      body: '코밋 로고에서 노란색 문자는 무엇일까요?',
      answer: "3", //보기: O, C, M, T
    ),
    const Question(
      id: 20,
      type: QuestionType.choices,
      body: '코밋 전 로고 동물은 무엇일까요?',
      answer: "1", //보기: 부엉이, 올빼미, 독수리, 생쥐
    ),
    const Question(
      id: 21,
      type: QuestionType.choices,
      body: 'ReLU는',
      answer: "2",
      // 보기
      // 1. 딥러닝 모델이다
      // 2. 활성화 함수이다
      // 3. 하이퍼파라미터다
      // 4. 옵티마이저다
    ),
    const Question(
      id: 22,
      type: QuestionType.ox,
      body: 'CNN은 자연어를 처리하기위한 딥러닝 모델이다',
      answer: "x",
    ),
    const Question(
      id: 23,
      type: QuestionType.choices,
      body: '코밋 운영진에 없는 팀은 무엇일까요?',
      answer: "3", //보기: 인사팀, 재무팀, 환경미화팀, 홍보팀
    ),
    const Question(
      id: 24,
      type: QuestionType.choices,
      body: 'CoMit에 관한 설명으로 올바른 것은 무엇일까요?',
      answer: "2",
      // 보기
      // 1. 율전 캠퍼스 학생들만 지원 가능하다.
      // 2. 2023학년도 명품스터디학회에 선정되었다.
      // 3. 스터디 활동은 개설된 스터디만 참여 가능하다.
      // 4. 학구적인 성격을 띠기 때문에 취미로 코딩을 공부하는 학생들은 지원 불가능하다.
    ),
    const Question(
      id: 25,
      type: QuestionType.choices,
      body: 'chatGPT에서 GPT는 어떤 단어의 줄임말일까?',
      answer: "1",
      // 보기
      // 1. Generative Pretrained Transformer
      // 2. Great Processing Translator
      // 3. Gorgeous Perfect Teacher
      // 4. Google Paypal Twitter
    ),
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
