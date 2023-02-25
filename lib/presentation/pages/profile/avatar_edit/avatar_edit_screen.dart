import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:giftbow_mobile/const/styles/theme.dart';
import 'package:giftbow_mobile/core/extensions.dart';
import 'package:giftbow_mobile/core/service_locator.dart';

import 'package:giftbow_mobile/presentation/pages/profile/avatar_edit/cubit/avatar_edit_cubit.dart';
import 'package:giftbow_mobile/presentation/pages/profile/profile/bloc/profile_bloc.dart';
import 'package:overlay_support/overlay_support.dart';

import '../../../../const/styles/assets.dart';
import '../../../general_widgets/buttons/gb_icon_text_button.dart';
import '../../../general_widgets/buttons/gb_text_button.dart';
import '../../../general_widgets/overlay_alert/gb_overlay_alert.dart';
import 'util/custom_image_crop.dart';

class AvatarEditScreen extends StatefulWidget {
  final File fileImage;

  const AvatarEditScreen({
    required this.fileImage,
    Key? key,
  }) : super(key: key);

  @override
  State<AvatarEditScreen> createState() => _AvatarEditScreenState();
}

class _AvatarEditScreenState extends State<AvatarEditScreen> {
  final GlobalKey<ExtendedImageEditorState> editorKey =
      GlobalKey<ExtendedImageEditorState>();

  late File editedFileImage;

  AvatarEditCubit avatarEditCubit = locator<AvatarEditCubit>();
  ProfileBloc profileBloc = locator<ProfileBloc>();

  @override
  void initState() {
    super.initState();
    editedFileImage = widget.fileImage;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: BlocConsumer<AvatarEditCubit, AvatarEditState>(
        bloc: avatarEditCubit,
        listener: (context, state) {
          state.when(
            avatarEdit: (
              status,
              newAvatar,
              error,
            ) {
              if (status == SendNewAvatar.success && newAvatar != null) {
                context.hideOverlayLoad;
                showOverlayNotification(
                  (context) => GbOverlayAlert(
                    text: context.local.your_avatar_success_updated,
                  ),
                );
                profileBloc.add(
                  ProfileEvent.updateProfileAvatar(
                    avatarUrl: newAvatar,
                  ),
                );
                AutoRouter.of(context).pop();
              }
              if (status == SendNewAvatar.error && error != null) {
                context.hideOverlayLoad;
                showOverlayNotification(
                  (context) => GbOverlayAlert(
                    text: error,
                    isError: true,
                  ),
                );
                AutoRouter.of(context).pop();
              }
            },
          );
        },
        builder: (context, state) {
          return Stack(
            children: [
              ExtendedImage.file(
                editedFileImage,
                cacheRawData: true,
                mode: ExtendedImageMode.editor,
                fit: BoxFit.contain,
                enableLoadState: true,
                extendedImageEditorKey: editorKey,
                initEditorConfigHandler: (state) {
                  return EditorConfig(
                    editorMaskColorHandler:
                        (BuildContext context, bool pointerDown) {
                      return Colors.black.withOpacity(0.8);
                    },
                    cropLayerPainter: const CustomEditorCropLayerPainter(),
                    cropAspectRatio: CropAspectRatios.custom,
                    cropRectPadding: const EdgeInsets.symmetric(
                      vertical: 72,
                      horizontal: 20,
                    ),
                    cornerColor: Colors.white,
                  );
                },
              ),
              Positioned(
                child: SafeArea(
                  child: SizedBox(
                    height: 56,
                    child: Row(
                      children: [
                        IconButton(
                          icon: SvgPicture.asset(
                            Assets.imagesBack,
                            colorFilter: const ColorFilter.mode(
                              AppColorsLight.white,
                              BlendMode.srcIn,
                            ),
                          ),
                          onPressed: () {
                            AutoRouter.of(context).pop();
                          },
                        ),
                        const Spacer(),
                        GbTextButton(
                          onPressed: () async {
                            context.showOverlayLoad;
                            avatarEditCubit.updateAvatar(
                              state: editorKey.currentState!,
                            );
                          },
                          text: context.local.done,
                          textStyle: context.text.textButtonAppBar.copyWith(
                            color: AppColorsLight.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned.fill(
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 8,
                    bottom: 32,
                  ),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: GbIconTextButton(
                      text: context.local.rotate,
                      iconName: Assets.imagesRotate,
                      onPressed: () async {
                        editorKey.currentState!.rotate(
                          right: true,
                        );
                      },
                      textColor: AppColorsLight.white,
                      iconColor: AppColorsLight.white,
                    ),
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
