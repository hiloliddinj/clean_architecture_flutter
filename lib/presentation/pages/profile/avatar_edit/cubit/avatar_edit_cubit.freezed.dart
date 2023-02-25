// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'avatar_edit_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AvatarEditState {
  SendNewAvatar get status => throw _privateConstructorUsedError;
  String? get urlAvatar => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            SendNewAvatar status, String? urlAvatar, String? error)
        avatarEdit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SendNewAvatar status, String? urlAvatar, String? error)?
        avatarEdit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SendNewAvatar status, String? urlAvatar, String? error)?
        avatarEdit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditAvatarState value) avatarEdit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditAvatarState value)? avatarEdit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditAvatarState value)? avatarEdit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AvatarEditStateCopyWith<AvatarEditState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvatarEditStateCopyWith<$Res> {
  factory $AvatarEditStateCopyWith(
          AvatarEditState value, $Res Function(AvatarEditState) then) =
      _$AvatarEditStateCopyWithImpl<$Res, AvatarEditState>;
  @useResult
  $Res call({SendNewAvatar status, String? urlAvatar, String? error});
}

/// @nodoc
class _$AvatarEditStateCopyWithImpl<$Res, $Val extends AvatarEditState>
    implements $AvatarEditStateCopyWith<$Res> {
  _$AvatarEditStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? urlAvatar = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SendNewAvatar,
      urlAvatar: freezed == urlAvatar
          ? _value.urlAvatar
          : urlAvatar // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EditAvatarStateCopyWith<$Res>
    implements $AvatarEditStateCopyWith<$Res> {
  factory _$$EditAvatarStateCopyWith(
          _$EditAvatarState value, $Res Function(_$EditAvatarState) then) =
      __$$EditAvatarStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SendNewAvatar status, String? urlAvatar, String? error});
}

/// @nodoc
class __$$EditAvatarStateCopyWithImpl<$Res>
    extends _$AvatarEditStateCopyWithImpl<$Res, _$EditAvatarState>
    implements _$$EditAvatarStateCopyWith<$Res> {
  __$$EditAvatarStateCopyWithImpl(
      _$EditAvatarState _value, $Res Function(_$EditAvatarState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? urlAvatar = freezed,
    Object? error = freezed,
  }) {
    return _then(_$EditAvatarState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SendNewAvatar,
      urlAvatar: freezed == urlAvatar
          ? _value.urlAvatar
          : urlAvatar // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$EditAvatarState implements EditAvatarState {
  const _$EditAvatarState(
      {this.status = SendNewAvatar.init, this.urlAvatar, this.error});

  @override
  @JsonKey()
  final SendNewAvatar status;
  @override
  final String? urlAvatar;
  @override
  final String? error;

  @override
  String toString() {
    return 'AvatarEditState.avatarEdit(status: $status, urlAvatar: $urlAvatar, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditAvatarState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.urlAvatar, urlAvatar) ||
                other.urlAvatar == urlAvatar) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, urlAvatar, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditAvatarStateCopyWith<_$EditAvatarState> get copyWith =>
      __$$EditAvatarStateCopyWithImpl<_$EditAvatarState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            SendNewAvatar status, String? urlAvatar, String? error)
        avatarEdit,
  }) {
    return avatarEdit(status, urlAvatar, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SendNewAvatar status, String? urlAvatar, String? error)?
        avatarEdit,
  }) {
    return avatarEdit?.call(status, urlAvatar, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SendNewAvatar status, String? urlAvatar, String? error)?
        avatarEdit,
    required TResult orElse(),
  }) {
    if (avatarEdit != null) {
      return avatarEdit(status, urlAvatar, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditAvatarState value) avatarEdit,
  }) {
    return avatarEdit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditAvatarState value)? avatarEdit,
  }) {
    return avatarEdit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditAvatarState value)? avatarEdit,
    required TResult orElse(),
  }) {
    if (avatarEdit != null) {
      return avatarEdit(this);
    }
    return orElse();
  }
}

abstract class EditAvatarState implements AvatarEditState {
  const factory EditAvatarState(
      {final SendNewAvatar status,
      final String? urlAvatar,
      final String? error}) = _$EditAvatarState;

  @override
  SendNewAvatar get status;
  @override
  String? get urlAvatar;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$EditAvatarStateCopyWith<_$EditAvatarState> get copyWith =>
      throw _privateConstructorUsedError;
}
