// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'email_edit_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EmailEditState {
  EmailEditStatus get status => throw _privateConstructorUsedError;
  Profile? get profile => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            EmailEditStatus status, Profile? profile, String? error)
        editEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EmailEditStatus status, Profile? profile, String? error)?
        editEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmailEditStatus status, Profile? profile, String? error)?
        editEmail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditEmailState value) editEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditEmailState value)? editEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditEmailState value)? editEmail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EmailEditStateCopyWith<EmailEditState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailEditStateCopyWith<$Res> {
  factory $EmailEditStateCopyWith(
          EmailEditState value, $Res Function(EmailEditState) then) =
      _$EmailEditStateCopyWithImpl<$Res, EmailEditState>;
  @useResult
  $Res call({EmailEditStatus status, Profile? profile, String? error});
}

/// @nodoc
class _$EmailEditStateCopyWithImpl<$Res, $Val extends EmailEditState>
    implements $EmailEditStateCopyWith<$Res> {
  _$EmailEditStateCopyWithImpl(this._value, this._then);

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
              as EmailEditStatus,
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
abstract class _$$EditEmailStateCopyWith<$Res>
    implements $EmailEditStateCopyWith<$Res> {
  factory _$$EditEmailStateCopyWith(
          _$EditEmailState value, $Res Function(_$EditEmailState) then) =
      __$$EditEmailStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({EmailEditStatus status, Profile? profile, String? error});
}

/// @nodoc
class __$$EditEmailStateCopyWithImpl<$Res>
    extends _$EmailEditStateCopyWithImpl<$Res, _$EditEmailState>
    implements _$$EditEmailStateCopyWith<$Res> {
  __$$EditEmailStateCopyWithImpl(
      _$EditEmailState _value, $Res Function(_$EditEmailState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? profile = freezed,
    Object? error = freezed,
  }) {
    return _then(_$EditEmailState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as EmailEditStatus,
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

class _$EditEmailState implements EditEmailState {
  const _$EditEmailState(
      {this.status = EmailEditStatus.init, this.profile, this.error});

  @override
  @JsonKey()
  final EmailEditStatus status;
  @override
  final Profile? profile;
  @override
  final String? error;

  @override
  String toString() {
    return 'EmailEditState.editEmail(status: $status, profile: $profile, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditEmailState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.profile, profile) || other.profile == profile) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, profile, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditEmailStateCopyWith<_$EditEmailState> get copyWith =>
      __$$EditEmailStateCopyWithImpl<_$EditEmailState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            EmailEditStatus status, Profile? profile, String? error)
        editEmail,
  }) {
    return editEmail(status, profile, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EmailEditStatus status, Profile? profile, String? error)?
        editEmail,
  }) {
    return editEmail?.call(status, profile, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmailEditStatus status, Profile? profile, String? error)?
        editEmail,
    required TResult orElse(),
  }) {
    if (editEmail != null) {
      return editEmail(status, profile, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditEmailState value) editEmail,
  }) {
    return editEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditEmailState value)? editEmail,
  }) {
    return editEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditEmailState value)? editEmail,
    required TResult orElse(),
  }) {
    if (editEmail != null) {
      return editEmail(this);
    }
    return orElse();
  }
}

abstract class EditEmailState implements EmailEditState {
  const factory EditEmailState(
      {final EmailEditStatus status,
      final Profile? profile,
      final String? error}) = _$EditEmailState;

  @override
  EmailEditStatus get status;
  @override
  Profile? get profile;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$EditEmailStateCopyWith<_$EditEmailState> get copyWith =>
      throw _privateConstructorUsedError;
}
