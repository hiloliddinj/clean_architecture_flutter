// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'personal_data_edit_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PersonalDataEditState {
  UpdatePersonalInfoStatus get status => throw _privateConstructorUsedError;
  Profile? get profile => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            UpdatePersonalInfoStatus status, Profile? profile, String? error)
        personalInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            UpdatePersonalInfoStatus status, Profile? profile, String? error)?
        personalInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            UpdatePersonalInfoStatus status, Profile? profile, String? error)?
        personalInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PersonalInfoState value) personalInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PersonalInfoState value)? personalInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PersonalInfoState value)? personalInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PersonalDataEditStateCopyWith<PersonalDataEditState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonalDataEditStateCopyWith<$Res> {
  factory $PersonalDataEditStateCopyWith(PersonalDataEditState value,
          $Res Function(PersonalDataEditState) then) =
      _$PersonalDataEditStateCopyWithImpl<$Res, PersonalDataEditState>;
  @useResult
  $Res call({UpdatePersonalInfoStatus status, Profile? profile, String? error});
}

/// @nodoc
class _$PersonalDataEditStateCopyWithImpl<$Res,
        $Val extends PersonalDataEditState>
    implements $PersonalDataEditStateCopyWith<$Res> {
  _$PersonalDataEditStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? profile = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UpdatePersonalInfoStatus,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as Profile?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PersonalInfoStateCopyWith<$Res>
    implements $PersonalDataEditStateCopyWith<$Res> {
  factory _$$PersonalInfoStateCopyWith(
          _$PersonalInfoState value, $Res Function(_$PersonalInfoState) then) =
      __$$PersonalInfoStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UpdatePersonalInfoStatus status, Profile? profile, String? error});
}

/// @nodoc
class __$$PersonalInfoStateCopyWithImpl<$Res>
    extends _$PersonalDataEditStateCopyWithImpl<$Res, _$PersonalInfoState>
    implements _$$PersonalInfoStateCopyWith<$Res> {
  __$$PersonalInfoStateCopyWithImpl(
      _$PersonalInfoState _value, $Res Function(_$PersonalInfoState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? profile = freezed,
    Object? error = freezed,
  }) {
    return _then(_$PersonalInfoState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UpdatePersonalInfoStatus,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as Profile?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PersonalInfoState implements PersonalInfoState {
  const _$PersonalInfoState(
      {this.status = UpdatePersonalInfoStatus.init, this.profile, this.error});

  @override
  @JsonKey()
  final UpdatePersonalInfoStatus status;
  @override
  final Profile? profile;
  @override
  final String? error;

  @override
  String toString() {
    return 'PersonalDataEditState.personalInfo(status: $status, profile: $profile, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PersonalInfoState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.profile, profile) || other.profile == profile) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, profile, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PersonalInfoStateCopyWith<_$PersonalInfoState> get copyWith =>
      __$$PersonalInfoStateCopyWithImpl<_$PersonalInfoState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            UpdatePersonalInfoStatus status, Profile? profile, String? error)
        personalInfo,
  }) {
    return personalInfo(status, profile, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            UpdatePersonalInfoStatus status, Profile? profile, String? error)?
        personalInfo,
  }) {
    return personalInfo?.call(status, profile, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            UpdatePersonalInfoStatus status, Profile? profile, String? error)?
        personalInfo,
    required TResult orElse(),
  }) {
    if (personalInfo != null) {
      return personalInfo(status, profile, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PersonalInfoState value) personalInfo,
  }) {
    return personalInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PersonalInfoState value)? personalInfo,
  }) {
    return personalInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PersonalInfoState value)? personalInfo,
    required TResult orElse(),
  }) {
    if (personalInfo != null) {
      return personalInfo(this);
    }
    return orElse();
  }
}

abstract class PersonalInfoState implements PersonalDataEditState {
  const factory PersonalInfoState(
      {final UpdatePersonalInfoStatus status,
      final Profile? profile,
      final String? error}) = _$PersonalInfoState;

  @override
  UpdatePersonalInfoStatus get status;
  @override
  Profile? get profile;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$PersonalInfoStateCopyWith<_$PersonalInfoState> get copyWith =>
      throw _privateConstructorUsedError;
}
