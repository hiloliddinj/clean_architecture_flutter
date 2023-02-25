part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.started() = StartedEvent;

  const factory ProfileEvent.getProfileInfo() = ProfileGetInfoEvent;

  const factory ProfileEvent.pickNewAvatar() = ProfilePickNewAvatarEvent;

  const factory ProfileEvent.updateProfileAvatar({
    required String avatarUrl,
  }) = ProfileUpdateAvatarEvent;

  const factory ProfileEvent.updateProfileAllInfo({
    required Profile profile,
  }) = ProfileUpdateAllInfoEvent;
}
