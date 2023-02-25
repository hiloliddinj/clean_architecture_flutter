// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_phone_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthPhoneState {
  AuthPhoneStatus get status => throw _privateConstructorUsedError;
  ConfirmToken? get confirmToken => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            AuthPhoneStatus status, ConfirmToken? confirmToken, String? error)
        nextButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            AuthPhoneStatus status, ConfirmToken? confirmToken, String? error)?
        nextButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            AuthPhoneStatus status, ConfirmToken? confirmToken, String? error)?
        nextButtonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthPhoneState value) nextButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthPhoneState value)? nextButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthPhoneState value)? nextButtonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthPhoneStateCopyWith<AuthPhoneState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthPhoneStateCopyWith<$Res> {
  factory $AuthPhoneStateCopyWith(
          AuthPhoneState value, $Res Function(AuthPhoneState) then) =
      _$AuthPhoneStateCopyWithImpl<$Res, AuthPhoneState>;
  @useResult
  $Res call(
      {AuthPhoneStatus status, ConfirmToken? confirmToken, String? error});
}

/// @nodoc
class _$AuthPhoneStateCopyWithImpl<$Res, $Val extends AuthPhoneState>
    implements $AuthPhoneStateCopyWith<$Res> {
  _$AuthPhoneStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? confirmToken = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthPhoneStatus,
      confirmToken: freezed == confirmToken
          ? _value.confirmToken
          : confirmToken // ignore: cast_nullable_to_non_nullable
              as ConfirmToken?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthPhoneStateCopyWith<$Res>
    implements $AuthPhoneStateCopyWith<$Res> {
  factory _$$_AuthPhoneStateCopyWith(
          _$_AuthPhoneState value, $Res Function(_$_AuthPhoneState) then) =
      __$$_AuthPhoneStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AuthPhoneStatus status, ConfirmToken? confirmToken, String? error});
}

/// @nodoc
class __$$_AuthPhoneStateCopyWithImpl<$Res>
    extends _$AuthPhoneStateCopyWithImpl<$Res, _$_AuthPhoneState>
    implements _$$_AuthPhoneStateCopyWith<$Res> {
  __$$_AuthPhoneStateCopyWithImpl(
      _$_AuthPhoneState _value, $Res Function(_$_AuthPhoneState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? confirmToken = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_AuthPhoneState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthPhoneStatus,
      confirmToken: freezed == confirmToken
          ? _value.confirmToken
          : confirmToken // ignore: cast_nullable_to_non_nullable
              as ConfirmToken?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_AuthPhoneState implements _AuthPhoneState {
  const _$_AuthPhoneState(
      {this.status = AuthPhoneStatus.init, this.confirmToken, this.error});

  @override
  @JsonKey()
  final AuthPhoneStatus status;
  @override
  final ConfirmToken? confirmToken;
  @override
  final String? error;

  @override
  String toString() {
    return 'AuthPhoneState.nextButtonPressed(status: $status, confirmToken: $confirmToken, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthPhoneState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.confirmToken, confirmToken) ||
                other.confirmToken == confirmToken) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, confirmToken, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthPhoneStateCopyWith<_$_AuthPhoneState> get copyWith =>
      __$$_AuthPhoneStateCopyWithImpl<_$_AuthPhoneState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            AuthPhoneStatus status, ConfirmToken? confirmToken, String? error)
        nextButtonPressed,
  }) {
    return nextButtonPressed(status, confirmToken, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            AuthPhoneStatus status, ConfirmToken? confirmToken, String? error)?
        nextButtonPressed,
  }) {
    return nextButtonPressed?.call(status, confirmToken, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            AuthPhoneStatus status, ConfirmToken? confirmToken, String? error)?
        nextButtonPressed,
    required TResult orElse(),
  }) {
    if (nextButtonPressed != null) {
      return nextButtonPressed(status, confirmToken, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthPhoneState value) nextButtonPressed,
  }) {
    return nextButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthPhoneState value)? nextButtonPressed,
  }) {
    return nextButtonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthPhoneState value)? nextButtonPressed,
    required TResult orElse(),
  }) {
    if (nextButtonPressed != null) {
      return nextButtonPressed(this);
    }
    return orElse();
  }
}

abstract class _AuthPhoneState implements AuthPhoneState {
  const factory _AuthPhoneState(
      {final AuthPhoneStatus status,
      final ConfirmToken? confirmToken,
      final String? error}) = _$_AuthPhoneState;

  @override
  AuthPhoneStatus get status;
  @override
  ConfirmToken? get confirmToken;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$_AuthPhoneStateCopyWith<_$_AuthPhoneState> get copyWith =>
      throw _privateConstructorUsedError;
}
