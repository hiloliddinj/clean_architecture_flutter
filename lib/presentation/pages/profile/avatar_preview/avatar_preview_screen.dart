import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:giftbow_mobile/core/extensions.dart';
import 'package:overlay_support/overlay_support.dart';

import '../../../../const/styles/assets.dart';
import '../../../../const/styles/theme.dart';
import '../../../../core/service_locator.dart';
import '../../../general_widgets/appbar/gb_appbar.dart';
import '../../../general_widgets/buttons/gb_icon_text_button.dart';
import '../../../general_widgets/overlay_alert/gb_overlay_alert.dart';
import '../avatar_edit/cubit/avatar_edit_cubit.dart';
import '../profile/bloc/profile_bloc.dart';

class AvatarPreviewScreen extends StatelessWidget {
  final String urlAvatar;

  AvatarPreviewScreen({
    required this.urlAvatar,
    Key? key,
  }) : super(key: key);

  final ProfileBloc profileBloc = locator<ProfileBloc>();
  final AvatarEditCubit avatarEditCubit = locator<AvatarEditCubit>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AvatarEditCubit, AvatarEditState>(
      bloc: avatarEditCubit,
      listener: (context, state) {
        state.when(
          avatarEdit: (status, newAvatar, error) {
            if (status == SendNewAvatar.success && newAvatar != null) {
              context.hideOverlayLoad;
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
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: GbAppBar(
            color: Colors.transparent,
            leading: IconButton(
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
          ),
          bottomNavigationBar: SafeArea(
            child: Container(
              padding: const EdgeInsets.only(
                bottom: 32,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GbIconTextButton(
                    text: context.local.replace,
                    iconName: Assets.imagesReplace,
                    onPressed: () async {
                      profileBloc.add(
                        const ProfileEvent.pickNewAvatar(),
                      );
                      AutoRouter.of(context).pop();
                    },
                    textColor: AppColorsLight.white,
                    iconColor: AppColorsLight.white,
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  GbIconTextButton(
                    text: context.local.delete,
                    iconName: Assets.imagesDelete,
                    onPressed: () async {
                      context.showOverlayLoad;
                      avatarEditCubit.updateAvatar(
                        isDeleteAvatar: true,
                      );
                    },
                    textColor: AppColorsLight.white,
                    iconColor: AppColorsLight.white,
                  ),
                ],
              ),
            ),
          ),
          body: Center(
            child: Image.network(urlAvatar),
          ),
        );
      },
    );
  }
}
