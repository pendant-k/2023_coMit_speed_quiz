import 'package:freezed_annotation/freezed_annotation.dart';

part 'question.freezed.dart';
part 'question.g.dart';

// 질문 타입 enum
// ox: OX 퀴즈
// choices: 객관식 퀴즈 (4지선다)
// shortAnswer: 단답형 퀴즈

enum QuestionType {
  ox,
  choices,
  shortAnswer,
}

@freezed
class Question with _$Question {
  const factory Question({
    required int id,
    required QuestionType type,
    required String body,
    required String answer,
    List<String>? choices,
  }) = _Question;

  factory Question.fromJson(Map<String, dynamic> json) =>
      _$QuestionFromJson(json);
}
