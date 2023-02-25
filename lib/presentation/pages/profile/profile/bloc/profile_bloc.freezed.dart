// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getProfileInfo,
    required TResult Function() pickNewAvatar,
    required TResult Function(String avatarUrl) updateProfileAvatar,
    required TResult Function(Profile profile) updateProfileAllInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getProfileInfo,
    TResult? Function()? pickNewAvatar,
    TResult? Function(String avatarUrl)? updateProfileAvatar,
    TResult? Function(Profile profile)? updateProfileAllInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getProfileInfo,
    TResult Function()? pickNewAvatar,
    TResult Function(String avatarUrl)? updateProfileAvatar,
    TResult Function(Profile profile)? updateProfileAllInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartedEvent value) started,
    required TResult Function(ProfileGetInfoEvent value) getProfileInfo,
    required TResult Function(ProfilePickNewAvatarEvent value) pickNewAvatar,
    required TResult Function(ProfileUpdateAvatarEvent value)
        updateProfileAvatar,
    required TResult Function(ProfileUpdateAllInfoEvent value)
        updateProfileAllInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartedEvent value)? started,
    TResult? Function(ProfileGetInfoEvent value)? getProfileInfo,
    TResult? Function(ProfilePickNewAvatarEvent value)? pickNewAvatar,
    TResult? Function(ProfileUpdateAvatarEvent value)? updateProfileAvatar,
    TResult? Function(ProfileUpdateAllInfoEvent value)? updateProfileAllInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartedEvent value)? started,
    TResult Function(ProfileGetInfoEvent value)? getProfileInfo,
    TResult Function(ProfilePickNewAvatarEvent value)? pickNewAvatar,
    TResult Function(ProfileUpdateAvatarEvent value)? updateProfileAvatar,
    TResult Function(ProfileUpdateAllInfoEvent value)? updateProfileAllInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res, ProfileEvent>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res, $Val extends ProfileEvent>
    implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedEventCopyWith<$Res> {
  factory _$$StartedEventCopyWith(
          _$StartedEvent value, $Res Function(_$StartedEvent) then) =
      __$$StartedEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedEventCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$StartedEvent>
    implements _$$StartedEventCopyWith<$Res> {
  __$$StartedEventCopyWithImpl(
      _$StartedEvent _value, $Res Function(_$StartedEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedEvent implements StartedEvent {
  const _$StartedEvent();

  @override
  String toString() {
    return 'ProfileEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getProfileInfo,
    required TResult Function() pickNewAvatar,
    required TResult Function(String avatarUrl) updateProfileAvatar,
    required TResult Function(Profile profile) updateProfileAllInfo,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getProfileInfo,
    TResult? Function()? pickNewAvatar,
    TResult? Function(String avatarUrl)? updateProfileAvatar,
    TResult? Function(Profile profile)? updateProfileAllInfo,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getProfileInfo,
    TResult Function()? pickNewAvatar,
    TResult Function(String avatarUrl)? updateProfileAvatar,
    TResult Function(Profile profile)? updateProfileAllInfo,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartedEvent value) started,
    required TResult Function(ProfileGetInfoEvent value) getProfileInfo,
    required TResult Function(ProfilePickNewAvatarEvent value) pickNewAvatar,
    required TResult Function(ProfileUpdateAvatarEvent value)
        updateProfileAvatar,
    required TResult Function(ProfileUpdateAllInfoEvent value)
        updateProfileAllInfo,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartedEvent value)? started,
    TResult? Function(ProfileGetInfoEvent value)? getProfileInfo,
    TResult? Function(ProfilePickNewAvatarEvent value)? pickNewAvatar,
    TResult? Function(ProfileUpdateAvatarEvent value)? updateProfileAvatar,
    TResult? Function(ProfileUpdateAllInfoEvent value)? updateProfileAllInfo,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartedEvent value)? started,
    TResult Function(ProfileGetInfoEvent value)? getProfileInfo,
    TResult Function(ProfilePickNewAvatarEvent value)? pickNewAvatar,
    TResult Function(ProfileUpdateAvatarEvent value)? updateProfileAvatar,
    TResult Function(ProfileUpdateAllInfoEvent value)? updateProfileAllInfo,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class StartedEvent implements ProfileEvent {
  const factory StartedEvent() = _$StartedEvent;
}

/// @nodoc
abstract class _$$ProfileGetInfoEventCopyWith<$Res> {
  factory _$$ProfileGetInfoEventCopyWith(_$ProfileGetInfoEvent value,
          $Res Function(_$ProfileGetInfoEvent) then) =
      __$$ProfileGetInfoEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileGetInfoEventCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$ProfileGetInfoEvent>
    implements _$$ProfileGetInfoEventCopyWith<$Res> {
  __$$ProfileGetInfoEventCopyWithImpl(
      _$ProfileGetInfoEvent _value, $Res Function(_$ProfileGetInfoEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProfileGetInfoEvent implements ProfileGetInfoEvent {
  const _$ProfileGetInfoEvent();

  @override
  String toString() {
    return 'ProfileEvent.getProfileInfo()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProfileGetInfoEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getProfileInfo,
    required TResult Function() pickNewAvatar,
    required TResult Function(String avatarUrl) updateProfileAvatar,
    required TResult Function(Profile profile) updateProfileAllInfo,
  }) {
    return getProfileInfo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getProfileInfo,
    TResult? Function()? pickNewAvatar,
    TResult? Function(String avatarUrl)? updateProfileAvatar,
    TResult? Function(Profile profile)? updateProfileAllInfo,
  }) {
    return getProfileInfo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getProfileInfo,
    TResult Function()? pickNewAvatar,
    TResult Function(String avatarUrl)? updateProfileAvatar,
    TResult Function(Profile profile)? updateProfileAllInfo,
    required TResult orElse(),
  }) {
    if (getProfileInfo != null) {
      return getProfileInfo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartedEvent value) started,
    required TResult Function(ProfileGetInfoEvent value) getProfileInfo,
    required TResult Function(ProfilePickNewAvatarEvent value) pickNewAvatar,
    required TResult Function(ProfileUpdateAvatarEvent value)
        updateProfileAvatar,
    required TResult Function(ProfileUpdateAllInfoEvent value)
        updateProfileAllInfo,
  }) {
    return getProfileInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartedEvent value)? started,
    TResult? Function(ProfileGetInfoEvent value)? getProfileInfo,
    TResult? Function(ProfilePickNewAvatarEvent value)? pickNewAvatar,
    TResult? Function(ProfileUpdateAvatarEvent value)? updateProfileAvatar,
    TResult? Function(ProfileUpdateAllInfoEvent value)? updateProfileAllInfo,
  }) {
    return getProfileInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartedEvent value)? started,
    TResult Function(ProfileGetInfoEvent value)? getProfileInfo,
    TResult Function(ProfilePickNewAvatarEvent value)? pickNewAvatar,
    TResult Function(ProfileUpdateAvatarEvent value)? updateProfileAvatar,
    TResult Function(ProfileUpdateAllInfoEvent value)? updateProfileAllInfo,
    required TResult orElse(),
  }) {
    if (getProfileInfo != null) {
      return getProfileInfo(this);
    }
    return orElse();
  }
}

abstract class ProfileGetInfoEvent implements ProfileEvent {
  const factory ProfileGetInfoEvent() = _$ProfileGetInfoEvent;
}

/// @nodoc
abstract class _$$ProfilePickNewAvatarEventCopyWith<$Res> {
  factory _$$ProfilePickNewAvatarEventCopyWith(
          _$ProfilePickNewAvatarEvent value,
          $Res Function(_$ProfilePickNewAvatarEvent) then) =
      __$$ProfilePickNewAvatarEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfilePickNewAvatarEventCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$ProfilePickNewAvatarEvent>
    implements _$$ProfilePickNewAvatarEventCopyWith<$Res> {
  __$$ProfilePickNewAvatarEventCopyWithImpl(_$ProfilePickNewAvatarEvent _value,
      $Res Function(_$ProfilePickNewAvatarEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProfilePickNewAvatarEvent implements ProfilePickNewAvatarEvent {
  const _$ProfilePickNewAvatarEvent();

  @override
  String toString() {
    return 'ProfileEvent.pickNewAvatar()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfilePickNewAvatarEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getProfileInfo,
    required TResult Function() pickNewAvatar,
    required TResult Function(String avatarUrl) updateProfileAvatar,
    required TResult Function(Profile profile) updateProfileAllInfo,
  }) {
    return pickNewAvatar();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getProfileInfo,
    TResult? Function()? pickNewAvatar,
    TResult? Function(String avatarUrl)? updateProfileAvatar,
    TResult? Function(Profile profile)? updateProfileAllInfo,
  }) {
    return pickNewAvatar?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getProfileInfo,
    TResult Function()? pickNewAvatar,
    TResult Function(String avatarUrl)? updateProfileAvatar,
    TResult Function(Profile profile)? updateProfileAllInfo,
    required TResult orElse(),
  }) {
    if (pickNewAvatar != null) {
      return pickNewAvatar();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartedEvent value) started,
    required TResult Function(ProfileGetInfoEvent value) getProfileInfo,
    required TResult Function(ProfilePickNewAvatarEvent value) pickNewAvatar,
    required TResult Function(ProfileUpdateAvatarEvent value)
        updateProfileAvatar,
    required TResult Function(ProfileUpdateAllInfoEvent value)
        updateProfileAllInfo,
  }) {
    return pickNewAvatar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartedEvent value)? started,
    TResult? Function(ProfileGetInfoEvent value)? getProfileInfo,
    TResult? Function(ProfilePickNewAvatarEvent value)? pickNewAvatar,
    TResult? Function(ProfileUpdateAvatarEvent value)? updateProfileAvatar,
    TResult? Function(ProfileUpdateAllInfoEvent value)? updateProfileAllInfo,
  }) {
    return pickNewAvatar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartedEvent value)? started,
    TResult Function(ProfileGetInfoEvent value)? getProfileInfo,
    TResult Function(ProfilePickNewAvatarEvent value)? pickNewAvatar,
    TResult Function(ProfileUpdateAvatarEvent value)? updateProfileAvatar,
    TResult Function(ProfileUpdateAllInfoEvent value)? updateProfileAllInfo,
    required TResult orElse(),
  }) {
    if (pickNewAvatar != null) {
      return pickNewAvatar(this);
    }
    return orElse();
  }
}

abstract class ProfilePickNewAvatarEvent implements ProfileEvent {
  const factory ProfilePickNewAvatarEvent() = _$ProfilePickNewAvatarEvent;
}

/// @nodoc
abstract class _$$ProfileUpdateAvatarEventCopyWith<$Res> {
  factory _$$ProfileUpdateAvatarEventCopyWith(_$ProfileUpdateAvatarEvent value,
          $Res Function(_$ProfileUpdateAvatarEvent) then) =
      __$$ProfileUpdateAvatarEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String avatarUrl});
}

/// @nodoc
class __$$ProfileUpdateAvatarEventCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$ProfileUpdateAvatarEvent>
    implements _$$ProfileUpdateAvatarEventCopyWith<$Res> {
  __$$ProfileUpdateAvatarEventCopyWithImpl(_$ProfileUpdateAvatarEvent _value,
      $Res Function(_$ProfileUpdateAvatarEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatarUrl = null,
  }) {
    return _then(_$ProfileUpdateAvatarEvent(
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProfileUpdateAvatarEvent implements ProfileUpdateAvatarEvent {
  const _$ProfileUpdateAvatarEvent({required this.avatarUrl});

  @override
  final String avatarUrl;

  @override
  String toString() {
    return 'ProfileEvent.updateProfileAvatar(avatarUrl: $avatarUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileUpdateAvatarEvent &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, avatarUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileUpdateAvatarEventCopyWith<_$ProfileUpdateAvatarEvent>
      get copyWith =>
          __$$ProfileUpdateAvatarEventCopyWithImpl<_$ProfileUpdateAvatarEvent>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getProfileInfo,
    required TResult Function() pickNewAvatar,
    required TResult Function(String avatarUrl) updateProfileAvatar,
    required TResult Function(Profile profile) updateProfileAllInfo,
  }) {
    return updateProfileAvatar(avatarUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getProfileInfo,
    TResult? Function()? pickNewAvatar,
    TResult? Function(String avatarUrl)? updateProfileAvatar,
    TResult? Function(Profile profile)? updateProfileAllInfo,
  }) {
    return updateProfileAvatar?.call(avatarUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getProfileInfo,
    TResult Function()? pickNewAvatar,
    TResult Function(String avatarUrl)? updateProfileAvatar,
    TResult Function(Profile profile)? updateProfileAllInfo,
    required TResult orElse(),
  }) {
    if (updateProfileAvatar != null) {
      return updateProfileAvatar(avatarUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartedEvent value) started,
    required TResult Function(ProfileGetInfoEvent value) getProfileInfo,
    required TResult Function(ProfilePickNewAvatarEvent value) pickNewAvatar,
    required TResult Function(ProfileUpdateAvatarEvent value)
        updateProfileAvatar,
    required TResult Function(ProfileUpdateAllInfoEvent value)
        updateProfileAllInfo,
  }) {
    return updateProfileAvatar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartedEvent value)? started,
    TResult? Function(ProfileGetInfoEvent value)? getProfileInfo,
    TResult? Function(ProfilePickNewAvatarEvent value)? pickNewAvatar,
    TResult? Function(ProfileUpdateAvatarEvent value)? updateProfileAvatar,
    TResult? Function(ProfileUpdateAllInfoEvent value)? updateProfileAllInfo,
  }) {
    return updateProfileAvatar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartedEvent value)? started,
    TResult Function(ProfileGetInfoEvent value)? getProfileInfo,
    TResult Function(ProfilePickNewAvatarEvent value)? pickNewAvatar,
    TResult Function(ProfileUpdateAvatarEvent value)? updateProfileAvatar,
    TResult Function(ProfileUpdateAllInfoEvent value)? updateProfileAllInfo,
    required TResult orElse(),
  }) {
    if (updateProfileAvatar != null) {
      return updateProfileAvatar(this);
    }
    return orElse();
  }
}

abstract class ProfileUpdateAvatarEvent implements ProfileEvent {
  const factory ProfileUpdateAvatarEvent({required final String avatarUrl}) =
      _$ProfileUpdateAvatarEvent;

  String get avatarUrl;
  @JsonKey(ignore: true)
  _$$ProfileUpdateAvatarEventCopyWith<_$ProfileUpdateAvatarEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProfileUpdateAllInfoEventCopyWith<$Res> {
  factory _$$ProfileUpdateAllInfoEventCopyWith(
          _$ProfileUpdateAllInfoEvent value,
          $Res Function(_$ProfileUpdateAllInfoEvent) then) =
      __$$ProfileUpdateAllInfoEventCopyWithImpl<$Res>;
  @useResult
  $Res call({Profile profile});
}

/// @nodoc
class __$$ProfileUpdateAllInfoEventCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$ProfileUpdateAllInfoEvent>
    implements _$$ProfileUpdateAllInfoEventCopyWith<$Res> {
  __$$ProfileUpdateAllInfoEventCopyWithImpl(_$ProfileUpdateAllInfoEvent _value,
      $Res Function(_$ProfileUpdateAllInfoEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profile = null,
  }) {
    return _then(_$ProfileUpdateAllInfoEvent(
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as Profile,
    ));
  }
}

/// @nodoc

class _$ProfileUpdateAllInfoEvent implements ProfileUpdateAllInfoEvent {
  const _$ProfileUpdateAllInfoEvent({required this.profile});

  @override
  final Profile profile;

  @override
  String toString() {
    return 'ProfileEvent.updateProfileAllInfo(profile: $profile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileUpdateAllInfoEvent &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileUpdateAllInfoEventCopyWith<_$ProfileUpdateAllInfoEvent>
      get copyWith => __$$ProfileUpdateAllInfoEventCopyWithImpl<
          _$ProfileUpdateAllInfoEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getProfileInfo,
    required TResult Function() pickNewAvatar,
    required TResult Function(String avatarUrl) updateProfileAvatar,
    required TResult Function(Profile profile) updateProfileAllInfo,
  }) {
    return updateProfileAllInfo(profile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getProfileInfo,
    TResult? Function()? pickNewAvatar,
    TResult? Function(String avatarUrl)? updateProfileAvatar,
    TResult? Function(Profile profile)? updateProfileAllInfo,
  }) {
    return updateProfileAllInfo?.call(profile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getProfileInfo,
    TResult Function()? pickNewAvatar,
    TResult Function(String avatarUrl)? updateProfileAvatar,
    TResult Function(Profile profile)? updateProfileAllInfo,
    required TResult orElse(),
  }) {
    if (updateProfileAllInfo != null) {
      return updateProfileAllInfo(profile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartedEvent value) started,
    required TResult Function(ProfileGetInfoEvent value) getProfileInfo,
    required TResult Function(ProfilePickNewAvatarEvent value) pickNewAvatar,
    required TResult Function(ProfileUpdateAvatarEvent value)
        updateProfileAvatar,
    required TResult Function(ProfileUpdateAllInfoEvent value)
        updateProfileAllInfo,
  }) {
    return updateProfileAllInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartedEvent value)? started,
    TResult? Function(ProfileGetInfoEvent value)? getProfileInfo,
    TResult? Function(ProfilePickNewAvatarEvent value)? pickNewAvatar,
    TResult? Function(ProfileUpdateAvatarEvent value)? updateProfileAvatar,
    TResult? Function(ProfileUpdateAllInfoEvent value)? updateProfileAllInfo,
  }) {
    return updateProfileAllInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartedEvent value)? started,
    TResult Function(ProfileGetInfoEvent value)? getProfileInfo,
    TResult Function(ProfilePickNewAvatarEvent value)? pickNewAvatar,
    TResult Function(ProfileUpdateAvatarEvent value)? updateProfileAvatar,
    TResult Function(ProfileUpdateAllInfoEvent value)? updateProfileAllInfo,
    required TResult orElse(),
  }) {
    if (updateProfileAllInfo != null) {
      return updateProfileAllInfo(this);
    }
    return orElse();
  }
}

abstract class ProfileUpdateAllInfoEvent implements ProfileEvent {
  const factory ProfileUpdateAllInfoEvent({required final Profile profile}) =
      _$ProfileUpdateAllInfoEvent;

  Profile get profile;
  @JsonKey(ignore: true)
  _$$ProfileUpdateAllInfoEventCopyWith<_$ProfileUpdateAllInfoEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProfileState {
  Profile? get profile => throw _privateConstructorUsedError;
  GetProfileInfoStatus? get status => throw _privateConstructorUsedError;
  ImageStatus? get imageStatus => throw _privateConstructorUsedError;
  File? get newPickedAvatar => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Profile? profile, GetProfileInfoStatus? status,
            ImageStatus? imageStatus, File? newPickedAvatar, String? error)
        profile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Profile? profile, GetProfileInfoStatus? status,
            ImageStatus? imageStatus, File? newPickedAvatar, String? error)?
        profile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Profile? profile, GetProfileInfoStatus? status,
            ImageStatus? imageStatus, File? newPickedAvatar, String? error)?
        profile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileSuccessState value) profile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileSuccessState value)? profile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileSuccessState value)? profile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
  @useResult
  $Res call(
      {Profile? profile,
      GetProfileInfoStatus? status,
      ImageStatus? imageStatus,
      File? newPickedAvatar,
      String? error});
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profile = freezed,
    Object? status = freezed,
    Object? imageStatus = freezed,
    Object? newPickedAvatar = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as Profile?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as GetProfileInfoStatus?,
      imageStatus: freezed == imageStatus
          ? _value.imageStatus
          : imageStatus // ignore: cast_nullable_to_non_nullable
              as ImageStatus?,
      newPickedAvatar: freezed == newPickedAvatar
          ? _value.newPickedAvatar
          : newPickedAvatar // ignore: cast_nullable_to_non_nullable
              as File?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileSuccessStateCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$$ProfileSuccessStateCopyWith(_$ProfileSuccessState value,
          $Res Function(_$ProfileSuccessState) then) =
      __$$ProfileSuccessStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Profile? profile,
      GetProfileInfoStatus? status,
      ImageStatus? imageStatus,
      File? newPickedAvatar,
      String? error});
}

/// @nodoc
class __$$ProfileSuccessStateCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileSuccessState>
    implements _$$ProfileSuccessStateCopyWith<$Res> {
  __$$ProfileSuccessStateCopyWithImpl(
      _$ProfileSuccessState _value, $Res Function(_$ProfileSuccessState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profile = freezed,
    Object? status = freezed,
    Object? imageStatus = freezed,
    Object? newPickedAvatar = freezed,
    Object? error = freezed,
  }) {
    return _then(_$ProfileSuccessState(
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as Profile?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as GetProfileInfoStatus?,
      imageStatus: freezed == imageStatus
          ? _value.imageStatus
          : imageStatus // ignore: cast_nullable_to_non_nullable
              as ImageStatus?,
      newPickedAvatar: freezed == newPickedAvatar
          ? _value.newPickedAvatar
          : newPickedAvatar // ignore: cast_nullable_to_non_nullable
              as File?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ProfileSuccessState implements ProfileSuccessState {
  const _$ProfileSuccessState(
      {this.profile,
      this.status = GetProfileInfoStatus.init,
      this.imageStatus,
      this.newPickedAvatar,
      this.error});

  @override
  final Profile? profile;
  @override
  @JsonKey()
  final GetProfileInfoStatus? status;
  @override
  final ImageStatus? imageStatus;
  @override
  final File? newPickedAvatar;
  @override
  final String? error;

  @override
  String toString() {
    return 'ProfileState.profile(profile: $profile, status: $status, imageStatus: $imageStatus, newPickedAvatar: $newPickedAvatar, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileSuccessState &&
            (identical(other.profile, profile) || other.profile == profile) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.imageStatus, imageStatus) ||
                other.imageStatus == imageStatus) &&
            (identical(other.newPickedAvatar, newPickedAvatar) ||
                other.newPickedAvatar == newPickedAvatar) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, profile, status, imageStatus, newPickedAvatar, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileSuccessStateCopyWith<_$ProfileSuccessState> get copyWith =>
      __$$ProfileSuccessStateCopyWithImpl<_$ProfileSuccessState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Profile? profile, GetProfileInfoStatus? status,
            ImageStatus? imageStatus, File? newPickedAvatar, String? error)
        profile,
  }) {
    return profile(this.profile, status, imageStatus, newPickedAvatar, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Profile? profile, GetProfileInfoStatus? status,
            ImageStatus? imageStatus, File? newPickedAvatar, String? error)?
        profile,
  }) {
    return profile?.call(
        this.profile, status, imageStatus, newPickedAvatar, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Profile? profile, GetProfileInfoStatus? status,
            ImageStatus? imageStatus, File? newPickedAvatar, String? error)?
        profile,
    required TResult orElse(),
  }) {
    if (profile != null) {
      return profile(this.profile, status, imageStatus, newPickedAvatar, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileSuccessState value) profile,
  }) {
    return profile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileSuccessState value)? profile,
  }) {
    return profile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileSuccessState value)? profile,
    required TResult orElse(),
  }) {
    if (profile != null) {
      return profile(this);
    }
    return orElse();
  }
}

abstract class ProfileSuccessState implements ProfileState {
  const factory ProfileSuccessState(
      {final Profile? profile,
      final GetProfileInfoStatus? status,
      final ImageStatus? imageStatus,
      final File? newPickedAvatar,
      final String? error}) = _$ProfileSuccessState;

  @override
  Profile? get profile;
  @override
  GetProfileInfoStatus? get status;
  @override
  ImageStatus? get imageStatus;
  @override
  File? get newPickedAvatar;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$ProfileSuccessStateCopyWith<_$ProfileSuccessState> get copyWith =>
      throw _privateConstructorUsedError;
}
