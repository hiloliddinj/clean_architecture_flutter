part of 'avatar_edit_cubit.dart';

enum SendNewAvatar {
  init,
  loading,
  success,
  error,
}

@freezed
class AvatarEditState with _$AvatarEditState {
  const factory AvatarEditState.avatarEdit({
    @Default(SendNewAvatar.init) SendNewAvatar status,
    String? urlAvatar,
    String? error,
  }) = EditAvatarState;
}
