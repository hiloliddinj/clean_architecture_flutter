part of 'profile_bloc.dart';

enum GetProfileInfoStatus {
  init,
  loading,
  localLoaded,
  success,
  error,
}

enum ImageStatus {
  denied,
  permanentlyDenied,
}

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.profile({
    Profile? profile,
    @Default(GetProfileInfoStatus.init) GetProfileInfoStatus? status,
    ImageStatus? imageStatus,
    File? newPickedAvatar,
    String? error,
  }) = ProfileSuccessState;
}
