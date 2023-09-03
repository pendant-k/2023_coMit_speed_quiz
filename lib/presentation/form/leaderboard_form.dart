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
        CircleAvatar(
          radius: 100.w,
        ),
      ],
    );
  }
}
