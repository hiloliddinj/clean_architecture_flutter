import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:giftbow_mobile/const/styles/assets.dart';
import 'package:giftbow_mobile/core/extensions.dart';
import 'package:giftbow_mobile/core/service_locator.dart';
import 'package:intl/intl.dart';

import '../../../../domain/entities/profile/profile_info/enum/email_status.dart';
import '../../../../domain/entities/profile/profile_info/enum/gender.dart';
import '../../../general_widgets/appbar/gb_appbar.dart';
import '../../../general_widgets/buttons/gb_icon_text_button.dart';
import '../../../general_widgets/buttons/gb_text_button.dart';
import '../../../navigation/router.dart';
import '../profile/bloc/profile_bloc.dart';
import 'widgets/widgets.dart';

class PersonalDataScreen extends StatelessWidget {
  PersonalDataScreen({
    Key? key,
  }) : super(key: key);

  final ProfileBloc profileBloc = locator<ProfileBloc>();

  final DateFormat dateFormat = DateFormat.yMMMMd('ru');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: const GbAppBar(
        isBack: true,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PersonalDataTypeWidget(
              onTab: () {
                AutoRouter.of(context).push(
                  const PersonalDataEditScreenRoute(),
                );
              },
              personalDataName: context.local.personal_data,
              listData: [
                PersonalDataItemWidget(
                  typeData: context.local.name,
                  data: profileBloc.state.profile!.name,
                ),
                PersonalDataItemWidget(
                  typeData: context.local.last_name,
                  data: profileBloc.state.profile!.surname,
                ),
                PersonalDataItemWidget(
                  typeData: context.local.birthday,
                  data: dateFormat.format(
                    DateTime.parse(
                      profileBloc.state.profile!.birthday.substring(
                        0,
                        10,
                      ),
                    ),
                  ),
                ),
                PersonalDataItemWidget(
                  typeData: context.local.gender,
                  data: profileBloc.state.profile!.gender == Gender.MALE
                      ? context.local.male
                      : context.local.female,
                ),
              ],
            ),
            const SizedBox(
              height: 32,
            ),
            PersonalDataTypeWidget(
              onTab: () {
                AutoRouter.of(context).push(
                  const EmailEditScreenRoute(),
                );
              },
              personalDataName: context.local.email,
              listData: [
                PersonalDataItemWidget(
                  isError: profileBloc.state.profile!.emailStatus ==
                      EmailStatus.PROCESSING,
                  action: profileBloc.state.profile!.emailStatus ==
                          EmailStatus.PROCESSING
                      ? GbTextButton(
                          onPressed: () {
                            AutoRouter.of(context).push(
                              const EmailConfirmationScreenRoute(),
                            );
                          },
                          text: profileBloc.state.profile!.emailStatus ==
                                  EmailStatus.PROCESSING
                              ? context.local.confirm
                              : context.local.email,
                          padding: const EdgeInsets.fromLTRB(
                            20,
                            20,
                            0,
                            30,
                          ),
                        )
                      : const SizedBox(),
                  typeData: context.local.email_not_confirmed,
                  data: profileBloc.state.profile!.email,
                ),
              ],
            ),
            const Spacer(),
            SafeArea(
              child: GbIconTextButton(
                text: context.local.delete_profile,
                iconName: Assets.imagesDelete,
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12),
                      ),
                    ),
                    builder: (context) {
                      return const DeleteAccountBottomSheet();
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
