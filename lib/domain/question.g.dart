// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Question _$$_QuestionFromJson(Map<String, dynamic> json) => _$_Question(
      id: json['id'] as int,
      type: $enumDecode(_$QuestionTypeEnumMap, json['type']),
      body: json['body'] as String,
      answer: json['answer'] as String,
      choices:
          (json['choices'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_QuestionToJson(_$_Question instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': _$QuestionTypeEnumMap[instance.type]!,
      'body': instance.body,
      'answer': instance.answer,
      'choices': instance.choices,
    };

const _$QuestionTypeEnumMap = {
  QuestionType.ox: 'ox',
  QuestionType.choices: 'choices',
  QuestionType.shortAnswer: 'shortAnswer',
};
