import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:giftbow_mobile/core/extensions.dart';
import 'package:giftbow_mobile/core/service_locator.dart';

import 'package:giftbow_mobile/presentation/navigation/router.dart';
import 'package:overlay_support/overlay_support.dart';

import '../../../../const/styles/assets.dart';
import '../../../general_widgets/appbar/gb_appbar.dart';
import '../../../general_widgets/buttons/gb_icon_text_button.dart';
import '../../../general_widgets/overlay_alert/gb_overlay_alert.dart';
import '../../../general_widgets/pinput/gb_pinput.dart';
import '../profile/bloc/profile_bloc.dart';
import 'cubit/email_confirmation_cubit.dart';

class EmailConfirmationScreen extends StatefulWidget {
  const EmailConfirmationScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<EmailConfirmationScreen> createState() =>
      _EmailConfirmationScreenState();
}

class _EmailConfirmationScreenState extends State<EmailConfirmationScreen> {
  final GlobalKey<FormState> pinputKey = GlobalKey<FormState>();

  final TextEditingController pinController = TextEditingController();
  final FocusNode pinFocus = FocusNode();

  final EmailConfirmationCubit emailConfirmationCubit =
      locator<EmailConfirmationCubit>();
  final ProfileBloc profileBloc = locator<ProfileBloc>();

  String? errorInput;

  @override
  void initState() {
    super.initState();
    pinFocus.addListener(
      () {
        if (pinFocus.hasFocus && pinController.text.length == 4) {
          pinController.clear();
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<EmailConfirmationCubit, EmailConfirmationState>(
      bloc: emailConfirmationCubit,
      listener: (context, state) {
        state.when(
          emailConfirmation: (
            status,
            error,
            profile,
            isPermanentlyDenied,
          ) {
            if (status == EmailConfirmationStatus.success) {
              context.hideOverlayLoad;
              showOverlayNotification(
                (context) => GbOverlayAlert(
                  text: context.local.email_has_been_successfully_updated,
                ),
              );
              profileBloc.add(
                ProfileEvent.updateProfileAllInfo(
                  profile: profile!,
                ),
              );
              AutoRouter.of(context).popUntil(
                  (route) => route.settings.name == ProfileScreenRoute.name);
            }
            if (status == EmailConfirmationStatus.error && error != null) {
              context.hideOverlayLoad;
              setState(() {
                errorInput = error;
              });
              pinputKey.currentState!.validate();
            }
          },
        );
      },
      builder: (context, state) {
        return Scaffold(
          appBar: const GbAppBar(
            isBack: true,
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
          floatingActionButton: state.status == EmailConfirmationStatus.error &&
                  state.isPermanentlyDenied == true
              ? GbIconTextButton(
                  text: context.local.get_the_code_again,
                  iconName: Assets.imagesReload,
                  onPressed: () async {
                    AutoRouter.of(context).popUntil(
                      (route) =>
                          route.settings.name == PersonalDataScreenRoute.name,
                    );
                    AutoRouter.of(context).push(const EmailEditScreenRoute());
                  },
                )
              : null,
          body: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  context.local.insert_code,
                  style: context.text.title,
                ),
                const SizedBox(
                  height: 32,
                ),
                Text(
                  context.local.confirmation_email_subtitle,
                  style: context.text.appDescription,
                ),
                const SizedBox(
                  height: 32,
                ),
                AbsorbPointer(
                  absorbing: state.isPermanentlyDenied!,
                  child: GbPinput(
                    pinputKey: pinputKey,
                    controller: pinController,
                    focusNode: pinFocus,
                    validator: (value) {
                      return errorInput;
                    },
                    onCompleted: (value) {
                      context.showOverlayLoad;
                      setState(() {
                        errorInput = null;
                      });
                      emailConfirmationCubit.confirmEmail(
                        confirmCode: value,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
