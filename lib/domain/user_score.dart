import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_score.freezed.dart';
part 'user_score.g.dart';

@freezed
class UserScore with _$UserScore {
  const factory UserScore({
    required String name,
    required String phoneNumber,
    required int score,
  }) = _UserScore;

  factory UserScore.fromJson(Map<String, dynamic> json) =>
      _$UserScoreFromJson(json);
}
