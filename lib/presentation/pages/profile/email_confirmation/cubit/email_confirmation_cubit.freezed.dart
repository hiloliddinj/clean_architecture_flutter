// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'email_confirmation_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EmailConfirmationState {
  EmailConfirmationStatus get status => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  Profile? get profile => throw _privateConstructorUsedError;
  bool? get isPermanentlyDenied => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EmailConfirmationStatus status, String? error,
            Profile? profile, bool? isPermanentlyDenied)
        emailConfirmation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EmailConfirmationStatus status, String? error,
            Profile? profile, bool? isPermanentlyDenied)?
        emailConfirmation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmailConfirmationStatus status, String? error,
            Profile? profile, bool? isPermanentlyDenied)?
        emailConfirmation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConfirmationEmailState value) emailConfirmation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConfirmationEmailState value)? emailConfirmation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConfirmationEmailState value)? emailConfirmation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EmailConfirmationStateCopyWith<EmailConfirmationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailConfirmationStateCopyWith<$Res> {
  factory $EmailConfirmationStateCopyWith(EmailConfirmationState value,
          $Res Function(EmailConfirmationState) then) =
      _$EmailConfirmationStateCopyWithImpl<$Res, EmailConfirmationState>;
  @useResult
  $Res call(
      {EmailConfirmationStatus status,
      String? error,
      Profile? profile,
      bool? isPermanentlyDenied});
}

/// @nodoc
class _$EmailConfirmationStateCopyWithImpl<$Res,
        $Val extends EmailConfirmationState>
    implements $EmailConfirmationStateCopyWith<$Res> {
  _$EmailConfirmationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? error = freezed,
    Object? profile = freezed,
    Object? isPermanentlyDenied = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as EmailConfirmationStatus,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as Profile?,
      isPermanentlyDenied: freezed == isPermanentlyDenied
          ? _value.isPermanentlyDenied
          : isPermanentlyDenied // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConfirmationEmailStateCopyWith<$Res>
    implements $EmailConfirmationStateCopyWith<$Res> {
  factory _$$ConfirmationEmailStateCopyWith(_$ConfirmationEmailState value,
          $Res Function(_$ConfirmationEmailState) then) =
      __$$ConfirmationEmailStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EmailConfirmationStatus status,
      String? error,
      Profile? profile,
      bool? isPermanentlyDenied});
}

/// @nodoc
class __$$ConfirmationEmailStateCopyWithImpl<$Res>
    extends _$EmailConfirmationStateCopyWithImpl<$Res, _$ConfirmationEmailState>
    implements _$$ConfirmationEmailStateCopyWith<$Res> {
  __$$ConfirmationEmailStateCopyWithImpl(_$ConfirmationEmailState _value,
      $Res Function(_$ConfirmationEmailState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? error = freezed,
    Object? profile = freezed,
    Object? isPermanentlyDenied = freezed,
  }) {
    return _then(_$ConfirmationEmailState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as EmailConfirmationStatus,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as Profile?,
      isPermanentlyDenied: freezed == isPermanentlyDenied
          ? _value.isPermanentlyDenied
          : isPermanentlyDenied // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$ConfirmationEmailState implements ConfirmationEmailState {
  const _$ConfirmationEmailState(
      {this.status = EmailConfirmationStatus.init,
      this.error,
      this.profile,
      this.isPermanentlyDenied = false});

  @override
  @JsonKey()
  final EmailConfirmationStatus status;
  @override
  final String? error;
  @override
  final Profile? profile;
  @override
  @JsonKey()
  final bool? isPermanentlyDenied;

  @override
  String toString() {
    return 'EmailConfirmationState.emailConfirmation(status: $status, error: $error, profile: $profile, isPermanentlyDenied: $isPermanentlyDenied)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmationEmailState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.profile, profile) || other.profile == profile) &&
            (identical(other.isPermanentlyDenied, isPermanentlyDenied) ||
                other.isPermanentlyDenied == isPermanentlyDenied));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, error, profile, isPermanentlyDenied);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmationEmailStateCopyWith<_$ConfirmationEmailState> get copyWith =>
      __$$ConfirmationEmailStateCopyWithImpl<_$ConfirmationEmailState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EmailConfirmationStatus status, String? error,
            Profile? profile, bool? isPermanentlyDenied)
        emailConfirmation,
  }) {
    return emailConfirmation(status, error, profile, isPermanentlyDenied);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EmailConfirmationStatus status, String? error,
            Profile? profile, bool? isPermanentlyDenied)?
        emailConfirmation,
  }) {
    return emailConfirmation?.call(status, error, profile, isPermanentlyDenied);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmailConfirmationStatus status, String? error,
            Profile? profile, bool? isPermanentlyDenied)?
        emailConfirmation,
    required TResult orElse(),
  }) {
    if (emailConfirmation != null) {
      return emailConfirmation(status, error, profile, isPermanentlyDenied);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConfirmationEmailState value) emailConfirmation,
  }) {
    return emailConfirmation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConfirmationEmailState value)? emailConfirmation,
  }) {
    return emailConfirmation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConfirmationEmailState value)? emailConfirmation,
    required TResult orElse(),
  }) {
    if (emailConfirmation != null) {
      return emailConfirmation(this);
    }
    return orElse();
  }
}

abstract class ConfirmationEmailState implements EmailConfirmationState {
  const factory ConfirmationEmailState(
      {final EmailConfirmationStatus status,
      final String? error,
      final Profile? profile,
      final bool? isPermanentlyDenied}) = _$ConfirmationEmailState;

  @override
  EmailConfirmationStatus get status;
  @override
  String? get error;
  @override
  Profile? get profile;
  @override
  bool? get isPermanentlyDenied;
  @override
  @JsonKey(ignore: true)
  _$$ConfirmationEmailStateCopyWith<_$ConfirmationEmailState> get copyWith =>
      throw _privateConstructorUsedError;
}
