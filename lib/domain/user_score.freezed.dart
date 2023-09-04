// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_score.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserScore _$UserScoreFromJson(Map<String, dynamic> json) {
  return _UserScore.fromJson(json);
}

/// @nodoc
mixin _$UserScore {
  String get name => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  int get score => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserScoreCopyWith<UserScore> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserScoreCopyWith<$Res> {
  factory $UserScoreCopyWith(UserScore value, $Res Function(UserScore) then) =
      _$UserScoreCopyWithImpl<$Res, UserScore>;
  @useResult
  $Res call({String name, String phoneNumber, int score});
}

/// @nodoc
class _$UserScoreCopyWithImpl<$Res, $Val extends UserScore>
    implements $UserScoreCopyWith<$Res> {
  _$UserScoreCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? phoneNumber = null,
    Object? score = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserScoreCopyWith<$Res> implements $UserScoreCopyWith<$Res> {
  factory _$$_UserScoreCopyWith(
          _$_UserScore value, $Res Function(_$_UserScore) then) =
      __$$_UserScoreCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String phoneNumber, int score});
}

/// @nodoc
class __$$_UserScoreCopyWithImpl<$Res>
    extends _$UserScoreCopyWithImpl<$Res, _$_UserScore>
    implements _$$_UserScoreCopyWith<$Res> {
  __$$_UserScoreCopyWithImpl(
      _$_UserScore _value, $Res Function(_$_UserScore) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? phoneNumber = null,
    Object? score = null,
  }) {
    return _then(_$_UserScore(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserScore implements _UserScore {
  const _$_UserScore(
      {required this.name, required this.phoneNumber, required this.score});

  factory _$_UserScore.fromJson(Map<String, dynamic> json) =>
      _$$_UserScoreFromJson(json);

  @override
  final String name;
  @override
  final String phoneNumber;
  @override
  final int score;

  @override
  String toString() {
    return 'UserScore(name: $name, phoneNumber: $phoneNumber, score: $score)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserScore &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.score, score) || other.score == score));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, phoneNumber, score);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserScoreCopyWith<_$_UserScore> get copyWith =>
      __$$_UserScoreCopyWithImpl<_$_UserScore>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserScoreToJson(
      this,
    );
  }
}

abstract class _UserScore implements UserScore {
  const factory _UserScore(
      {required final String name,
      required final String phoneNumber,
      required final int score}) = _$_UserScore;

  factory _UserScore.fromJson(Map<String, dynamic> json) =
      _$_UserScore.fromJson;

  @override
  String get name;
  @override
  String get phoneNumber;
  @override
  int get score;
  @override
  @JsonKey(ignore: true)
  _$$_UserScoreCopyWith<_$_UserScore> get copyWith =>
      throw _privateConstructorUsedError;
}
