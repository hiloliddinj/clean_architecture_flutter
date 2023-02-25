import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:giftbow_mobile/core/extensions.dart';
import 'package:giftbow_mobile/core/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:overlay_support/overlay_support.dart';

import '../../../../const/styles/assets.dart';
import '../../../general_widgets/appbar/gb_appbar.dart';
import '../../../general_widgets/overlay_alert/gb_overlay_alert.dart';
import '../../../navigation/router.dart';
import 'bloc/profile_bloc.dart';
import 'widgets/widgets.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({
    Key? key,
  }) : super(key: key);

  final profileBloc = locator<ProfileBloc>();

  @override
  Widget build(BuildContext context) {
    profileBloc.add(
      const ProfileEvent.getProfileInfo(),
    );
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: const GbAppBar(
        isBack: true,
      ),
      body: BlocConsumer<ProfileBloc, ProfileState>(
        bloc: profileBloc,
        listener: (context, state) {
          state.when(
            profile: (
              profile,
              status,
              imageStatus,
              newPickedAvatar,
              error,
            ) {
              if (newPickedAvatar != null) {
                AutoRouter.of(context).push(
                  AvatarEditScreenRoute(
                    fileImage: newPickedAvatar,
                  ),
                );
              }
              if (imageStatus != null) {
                if (imageStatus == ImageStatus.denied) {
                  AutoRouter.of(context).push(
                    ImagePermissionScreenRoute(),
                  );
                }
                if (imageStatus == ImageStatus.permanentlyDenied) {
                  showModalBottomSheet(
                    context: context,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12),
                      ),
                    ),
                    builder: (context) {
                      return const ImagePermissionBottomSheet();
                    },
                  );
                }
              }
              if (status == GetProfileInfoStatus.error && error != null) {
                showOverlayNotification(
                  (context) => GbOverlayAlert(
                    text: error,
                    isError: true,
                  ),
                );
              }
            },
          );
        },
        builder: (context, state) {
          if (state.status != null) {
            if (state.status == GetProfileInfoStatus.loading) {
              return const LoadProfileWidget();
            }
            if (state.status == GetProfileInfoStatus.success &&
                state.profile != null) {
              return LayoutBuilder(builder: (
                context,
                constraint,
              ) {
                return Form(
                  child: SingleChildScrollView(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        minHeight: constraint.maxHeight,
                        maxHeight: MediaQuery.of(context).size.height - 16,
                      ),
                      child: IntrinsicHeight(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 16,
                                horizontal: 20,
                              ),
                              child: Wrap(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      bottom: 32,
                                    ),
                                    child: ProfileTitleWidget(
                                      name: state.profile!.name,
                                      urlAvatar: state.profile!.avatarUrl!,
                                      onAvatarTap: () async {
                                        if (state.profile!.avatarUrl != null &&
                                            state.profile!.avatarUrl!
                                                .isNotEmpty) {
                                          AutoRouter.of(context).push(
                                            AvatarPreviewScreenRoute(
                                              urlAvatar:
                                                  state.profile!.avatarUrl!,
                                            ),
                                          );
                                        } else {
                                          profileBloc.add(const ProfileEvent
                                              .pickNewAvatar());
                                        }
                                      },
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(
                                      bottom: 16,
                                    ),
                                    child: MyWishesWidget(),
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: SettingContainer(
                                          image: Assets.imagesMoneyBag,
                                          title: context.local.balance,
                                          subtitle: context.local
                                              .balance_amount('5 900'),
                                          onTap: () {},
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 12,
                                      ),
                                      Expanded(
                                        child: SettingContainer(
                                          image: Assets.imagesLock,
                                          title: context.local.my_data,
                                          subtitle:
                                              context.local.name_and_other,
                                          onTap: () {
                                            AutoRouter.of(context).push(
                                              PersonalDataScreenRoute(),
                                            );
                                          },
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            const Spacer(),
                            Center(
                              child: SafeArea(
                                child: Wrap(
                                  children: [
                                    SettingItemWidget(
                                      onTap: () {},
                                      text: context.local.settings,
                                    ),
                                    SettingItemWidget(
                                      onTap: () {
                                        AutoRouter.of(context)
                                            .push(SupportScreenRoute());
                                      },
                                      text: context.local.help,
                                    ),
                                    SettingItemWidget(
                                      onTap: () {
                                        showModalBottomSheet(
                                          context: context,
                                          shape: const RoundedRectangleBorder(
                                              borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(12),
                                            topRight: Radius.circular(12),
                                          )),
                                          builder: (context) {
                                            return const LogoutBottomSheet();
                                          },
                                        );
                                      },
                                      text: context.local.exit,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              });
            }
          }
          return const SizedBox();
        },
      ),
    );
  }
}
