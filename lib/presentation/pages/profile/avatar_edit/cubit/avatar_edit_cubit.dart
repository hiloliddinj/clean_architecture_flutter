import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:extended_image/extended_image.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../const/global_function.dart';
import '../../../../../domain/usecases/profile/update_profile_avatar.dart';
import '../util/custom_image_crop.dart';

part 'avatar_edit_state.dart';

part 'avatar_edit_cubit.freezed.dart';

class AvatarEditCubit extends Cubit<AvatarEditState> {
  final UpdateProfileAvatar updateProfileAvatar;

  AvatarEditCubit({
    required this.updateProfileAvatar,
  }) : super(const AvatarEditState.avatarEdit());

  void updateAvatar({
    bool? isDeleteAvatar = false,
    ExtendedImageEditorState? state,
  }) async {
    emit(
      const AvatarEditState.avatarEdit(
        status: SendNewAvatar.loading,
      ),
    );
    File? avatarFile;
    if (!isDeleteAvatar!) {
      avatarFile = await cropImageDataWithNativeLibrary(
        state: state!,
      );
    }

    final getNewProfileAvatar = await updateProfileAvatar(
      Params(
        avatarFile: avatarFile,
      ),
    );

    getNewProfileAvatar.fold(
      (l) {
        emit(
          AvatarEditState.avatarEdit(
            status: SendNewAvatar.error,
            error: mapFailureToMessage(l),
          ),
        );
      },
      (r) => emit(
        AvatarEditState.avatarEdit(
          status: SendNewAvatar.success,
          urlAvatar: r,
        ),
      ),
    );
  }
}
