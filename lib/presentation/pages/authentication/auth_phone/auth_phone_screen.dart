import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:overlay_support/overlay_support.dart';

import '../../../../const/styles/styles.dart';
import '../../../../core/service_locator.dart';
import '../../../../core/extensions.dart';
import '../../../general_widgets/buttons/gb_bottom_button.dart';
import '../../../general_widgets/overlay_alert/gb_overlay_alert.dart';
import '../../../general_widgets/text_field/gb_text_field.dart';
import '../../../general_widgets/appbar/gb_appbar.dart';
import '../../../navigation/router.dart';
import 'cubit/auth_phone_cubit.dart';

class AuthPhoneScreen extends StatefulWidget {
  const AuthPhoneScreen({Key? key}) : super(key: key);

  @override
  State<AuthPhoneScreen> createState() => _AuthPhoneScreenState();
}

class _AuthPhoneScreenState extends State<AuthPhoneScreen> {

  static TextEditingController phoneController = TextEditingController();
  final FocusNode phoneFocus = FocusNode();

  final AuthPhoneCubit authPhoneCubit = locator<AuthPhoneCubit>();

  bool _buttonIsActive = false;

  @override
  void dispose() {
    phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GbAppBar(
        leading: SvgPicture.asset(
          Assets.imagesHandHi,
          fit: BoxFit.none,
        ),
      ),
      body: BlocConsumer<AuthPhoneCubit, AuthPhoneState>(
        bloc: authPhoneCubit,
        listener: (context, state) {
          state.when(
            nextButtonPressed: (
              status,
              confirmToken,
              error,
            ) {
              if (status == AuthPhoneStatus.success) {
                context.hideOverlayLoad;
                AutoRouter.of(context).push(
                  AuthPinScreenRoute(
                    confirmToken: confirmToken!,
                    phoneNumber: phoneController.text,
                  ),
                );
              } else if (status == AuthPhoneStatus.error && error != null) {
                context.hideOverlayLoad;
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
          return Stack(
            children: [
              Padding(
                padding: kPaddingScreen,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      context.local.enter_phone_number,
                      style: context.text.title,
                    ),
                    kSizedBoxVer32,
                    Text(
                      context.local.to_receive_and_give_gifts,
                      style: context.text.appDescription,
                    ),
                    kSizedBoxVer32,
                    KeyboardVisibilityBuilder(
                      builder: (context, isKeyboardVisible) {
                        return GbTextField(
                          label: context.local.phone_number,
                          focusNode: phoneFocus,
                          controller: phoneController,
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            MaskTextInputFormatter(
                              mask: '+7 ### ### ## ##',
                              filter: {"#": RegExp(r'\d')},
                              type: MaskAutoCompletionType.eager,
                            ),
                          ],
                          onChanged: (val) {
                            if (val.length == 16 && !_buttonIsActive) {
                              _buttonIsActive = true;
                              setState(() {});
                            } else {
                              if (_buttonIsActive) {
                                _buttonIsActive = false;
                                setState(() {});
                              }
                            }
                          },
                          onTap: () {
                            if (phoneController.text.isEmpty) {
                              phoneController.text = '+7 ';
                            }
                          },
                          onTapOutside: (val) {
                            if (phoneController.text == '+7 ') {
                              phoneController.clear();
                            }
                            FocusManager.instance.primaryFocus?.unfocus();
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
              GbBottomButton(
                onPressed: () {
                  if (_buttonIsActive) {
                    context.showOverlayLoad;
                    authPhoneCubit.nextButtonPressed(
                      phoneNumber: phoneController.text,
                    );
                  }
                },
                text: context.local.next,
                isDisable: !_buttonIsActive,
              ),
            ],
          );
        },
      ),
    );
  }
}
