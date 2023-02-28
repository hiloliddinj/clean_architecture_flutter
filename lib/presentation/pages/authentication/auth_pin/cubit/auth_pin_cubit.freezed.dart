// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_pin_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthPinState {
  AuthPinStatus get status => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthPinStatus status, String? error)
        pinEnterCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthPinStatus status, String? error)? pinEnterCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthPinStatus status, String? error)? pinEnterCompleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthPinState value) pinEnterCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthPinState value)? pinEnterCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthPinState value)? pinEnterCompleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthPinStateCopyWith<AuthPinState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthPinStateCopyWith<$Res> {
  factory $AuthPinStateCopyWith(
          AuthPinState value, $Res Function(AuthPinState) then) =
      _$AuthPinStateCopyWithImpl<$Res, AuthPinState>;
  @useResult
  $Res call({AuthPinStatus status, String? error});
}

/// @nodoc
class _$AuthPinStateCopyWithImpl<$Res, $Val extends AuthPinState>
    implements $AuthPinStateCopyWith<$Res> {
  _$AuthPinStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthPinStatus,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthPinStateCopyWith<$Res>
    implements $AuthPinStateCopyWith<$Res> {
  factory _$$_AuthPinStateCopyWith(
          _$_AuthPinState value, $Res Function(_$_AuthPinState) then) =
      __$$_AuthPinStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AuthPinStatus status, String? error});
}

/// @nodoc
class __$$_AuthPinStateCopyWithImpl<$Res>
    extends _$AuthPinStateCopyWithImpl<$Res, _$_AuthPinState>
    implements _$$_AuthPinStateCopyWith<$Res> {
  __$$_AuthPinStateCopyWithImpl(
      _$_AuthPinState _value, $Res Function(_$_AuthPinState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? error = freezed,
  }) {
    return _then(_$_AuthPinState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthPinStatus,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_AuthPinState implements _AuthPinState {
  const _$_AuthPinState({this.status = AuthPinStatus.init, this.error});

  @override
  @JsonKey()
  final AuthPinStatus status;
  @override
  final String? error;

  @override
  String toString() {
    return 'AuthPinState.pinEnterCompleted(status: $status, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthPinState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthPinStateCopyWith<_$_AuthPinState> get copyWith =>
      __$$_AuthPinStateCopyWithImpl<_$_AuthPinState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthPinStatus status, String? error)
        pinEnterCompleted,
  }) {
    return pinEnterCompleted(status, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthPinStatus status, String? error)? pinEnterCompleted,
  }) {
    return pinEnterCompleted?.call(status, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthPinStatus status, String? error)? pinEnterCompleted,
    required TResult orElse(),
  }) {
    if (pinEnterCompleted != null) {
      return pinEnterCompleted(status, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthPinState value) pinEnterCompleted,
  }) {
    return pinEnterCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthPinState value)? pinEnterCompleted,
  }) {
    return pinEnterCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthPinState value)? pinEnterCompleted,
    required TResult orElse(),
  }) {
    if (pinEnterCompleted != null) {
      return pinEnterCompleted(this);
    }
    return orElse();
  }
}

abstract class _AuthPinState implements AuthPinState {
  const factory _AuthPinState(
      {final AuthPinStatus status, final String? error}) = _$_AuthPinState;

  @override
  AuthPinStatus get status;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$_AuthPinStateCopyWith<_$_AuthPinState> get copyWith =>
      throw _privateConstructorUsedError;
}
