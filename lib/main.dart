import 'package:comit_quiz/presentation/form/leaderboard_form.dart';
import 'package:comit_quiz/presentation/home/home_screen.dart';
import 'package:comit_quiz/presentation/quiz/quiz_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1440, 1024),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: '2023 CoMit Speed Quiz',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const QuizScreen(),
        // const HomeScreen(),
      ),
    );
  }
}
