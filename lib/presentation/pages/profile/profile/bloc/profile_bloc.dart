import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:giftbow_mobile/core/usecases/usecases.dart';
import 'package:giftbow_mobile/domain/usecases/profile/get_profile_local_info.dart';
import 'package:giftbow_mobile/domain/usecases/profile/update_profile_avatar.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../../../const/global_function.dart';
import '../../../../../domain/entities/profile/profile_info/profile.dart';
import '../../../../../domain/usecases/profile/get_profile_info.dart';

part 'profile_event.dart';

part 'profile_state.dart';

part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final GetProfileInfo getProfileInfo;
  final GetProfileLocalInfo getProfileLocalInfo;
  final UpdateProfileAvatar updateProfileAvatar;

  ProfileBloc({
    required this.getProfileInfo,
    required this.getProfileLocalInfo,
    required this.updateProfileAvatar,
  }) : super(
          const ProfileState.profile(),
        ) {
    on<ProfileGetInfoEvent>(
      (event, emit) async {
        emit(const ProfileState.profile(
          status: GetProfileInfoStatus.loading,
        ));
        final profileLocalInfo = await getProfileLocalInfo(NoParams());
        emit(
          profileLocalInfo.fold(
            (l) => ProfileState.profile(
              status: GetProfileInfoStatus.loading,
              error: mapFailureToMessage(l),
            ),
            (r) => ProfileState.profile(
              profile: r,
              status: GetProfileInfoStatus.localLoaded,
            ),
          ),
        );

        final profileRemoteInfo = await getProfileInfo(NoParams());
        profileRemoteInfo.fold(
          (l) => emit(
            ProfileState.profile(
              status: GetProfileInfoStatus.error,
              error: mapFailureToMessage(l),
            ),
          ),
          (r) => emit(
            ProfileState.profile(
              status: GetProfileInfoStatus.success,
              profile: r,
            ),
          ),
        );
      },
    );

    on<ProfilePickNewAvatarEvent>(
      (event, emit) async {
        emit(
          state.copyWith(
            imageStatus: null,
            error: null,
          ),
        );
        PermissionStatus imagePermissionStatus;
        if (Platform.isAndroid) {
          DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
          AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
          if (androidInfo.version.sdkInt <= 32) {
            imagePermissionStatus = await Permission.storage.status;
            if (imagePermissionStatus == PermissionStatus.granted ||
                imagePermissionStatus == PermissionStatus.limited) {
              final FilePickerResult? result =
                  await FilePicker.platform.pickFiles(
                type: FileType.image,
              );
              if (result != null &&
                  result.files.isNotEmpty &&
                  result.files.single.path != null) {
                var file = File(result.files.single.path!);
                emit(
                  state.copyWith(
                    newPickedAvatar: file,
                  ),
                );
              }
            }
            if (imagePermissionStatus == PermissionStatus.permanentlyDenied) {
              emit(
                state.copyWith(
                  imageStatus: ImageStatus.permanentlyDenied,
                ),
              );
            }
            if (imagePermissionStatus == PermissionStatus.denied) {
              emit(
                state.copyWith(
                  imageStatus: ImageStatus.denied,
                ),
              );
            }
          } else {
            imagePermissionStatus = await Permission.photos.status;
            if (imagePermissionStatus == PermissionStatus.granted ||
                imagePermissionStatus == PermissionStatus.limited) {
              final FilePickerResult? result =
                  await FilePicker.platform.pickFiles(type: FileType.image);
              if (result != null &&
                  result.files.isNotEmpty &&
                  result.files.single.path != null) {
                var file = File(result.files.single.path!);
                emit(
                  state.copyWith(
                    newPickedAvatar: file,
                  ),
                );
              }
            }
            if (imagePermissionStatus == PermissionStatus.permanentlyDenied) {
              emit(
                state.copyWith(
                  imageStatus: ImageStatus.permanentlyDenied,
                ),
              );
            }
            if (imagePermissionStatus == PermissionStatus.denied) {
              emit(
                state.copyWith(
                  imageStatus: ImageStatus.denied,
                ),
              );
            }
          }
        } else {
          imagePermissionStatus = await Permission.photos.status;
          if (imagePermissionStatus == PermissionStatus.granted ||
              imagePermissionStatus == PermissionStatus.limited) {
            final FilePickerResult? result =
                await FilePicker.platform.pickFiles(type: FileType.image);
            if (result != null &&
                result.files.isNotEmpty &&
                result.files.single.path != null) {
              var file = File(result.files.single.path!);
              emit(
                state.copyWith(
                  newPickedAvatar: file,
                ),
              );
            }
          }
          if (imagePermissionStatus == PermissionStatus.permanentlyDenied) {
            emit(
              state.copyWith(
                imageStatus: ImageStatus.permanentlyDenied,
              ),
            );
          }
          if (imagePermissionStatus == PermissionStatus.denied) {
            emit(
              state.copyWith(
                imageStatus: ImageStatus.denied,
              ),
            );
          }
        }
      },
    );

    on<ProfileUpdateAvatarEvent>(
      (event, emit) async {
        emit(
          state.copyWith(
            profile: state.profile!.copyWith(
              avatarUrl: event.avatarUrl,
            ),
            newPickedAvatar: null,
          ),
        );
      },
    );

    on<ProfileUpdateAllInfoEvent>(
      (event, emit) async {
        emit(
          state.copyWith(
            profile: event.profile,
            newPickedAvatar: null,
          ),
        );
      },
    );
  }
}
