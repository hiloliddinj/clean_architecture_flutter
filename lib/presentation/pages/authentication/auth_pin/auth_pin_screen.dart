import 'dart:async';

import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:overlay_support/overlay_support.dart';

import '../../../../const/styles/styles.dart';
import '../../../../core/service_locator.dart';
import '../../../../core/extensions.dart';
import '../../../../domain/entities/authentication/confirm_token'
    '/confirm_token.dart';
import '../../../general_widgets/appbar/gb_appbar.dart';
import '../../../general_widgets/buttons/gb_icon_text_button.dart';
import '../../../general_widgets/buttons/gb_text_button.dart';
import '../../../general_widgets/overlay_alert/gb_overlay_alert.dart';
import '../../../general_widgets/pinput/gb_pinput.dart';
import '../../../navigation/router.dart';
import 'cubit/auth_pin_cubit.dart';

class AuthPinScreen extends StatefulWidget {
  final String phoneNumber;
  final ConfirmToken confirmToken;

  const AuthPinScreen({
    Key? key,
    required this.phoneNumber,
    required this.confirmToken,
  }) : super(key: key);

  @override
  State<AuthPinScreen> createState() => _AuthPinScreenState();
}

class _AuthPinScreenState extends State<AuthPinScreen> {
  final GlobalKey<FormState> pinputKey = GlobalKey<FormState>();

  final TextEditingController pinController = TextEditingController();
  final FocusNode pinFocus = FocusNode();

  final AuthPinCubit authPinCubit = locator<AuthPinCubit>();

  ConfirmToken? _confirmToken;
  Timer? _timer;
  int _start = 0;
  String timerMessage = '';
  String? errorInput;
  String errorMessage = '';

  bool enteredCodeAfterNewSms = false;

  void startTimer() {
    const oneSec = Duration(
      seconds: 1,
    );
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
            timerMessage = '';
            errorInput = null;
          });
          pinputKey.currentState!.validate();
        } else {
          setState(() {
            _start--;
            timerMessage = ' ${context.local.after} ${_formattedTime(
              timeInSecond: _start,
            )}';
            if (enteredCodeAfterNewSms && errorInput != null) {
              errorInput = '$errorMessage ${_formattedTime(
                timeInSecond: _start,
              )}';
              pinputKey.currentState!.validate();
            }
          });
        }
      },
    );
  }

  String _formattedTime({required int timeInSecond}) {
    if (timeInSecond > 0) {
      int sec = timeInSecond % 60;
      int min = (timeInSecond / 60).floor();
      String minute = min.toString().length <= 1 ? "0$min" : "$min";
      String second = sec.toString().length <= 1 ? "0$sec" : "$sec";
      return '$minute:$second';
    }
    return '';
  }

  @override
  void initState() {
    super.initState();
    pinFocus.addListener(
      () {
        if (pinFocus.hasFocus && pinController.text.length == 4) {
          pinController.clear();
          errorInput = null;
        }
      },
    );
    _start = widget.confirmToken.resendTime;
    _confirmToken = widget.confirmToken;
    authPinCubit.setMaxCheckCode(widget.confirmToken.maxCheckCode);
  }

  @override
  void dispose() {
    pinController.dispose();
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GbAppBar(
        isBack: true,
        actions: [
          GbTextButton(
            onPressed: () {},
            text: context.local.onward,
            textStyle: context.text.textButtonAppBar,
          ),
        ],
      ),
      body: BlocConsumer<AuthPinCubit, AuthPinState>(
        bloc: authPinCubit,
        listener: (context, state) {
          state.when(pinEnterCompleted: (
            status,
            error,
          ) {
            if (status == AuthPinStatus.success) {
              context.hideOverlayLoad;
              AutoRouter.of(context).replaceAll(
                [
                  const AgreementCheckboxScreenRoute(),
                ],
              );
            } else if (status == AuthPinStatus.error && error != null) {
              context.hideOverlayLoad;
              errorMessage = error;
              errorInput = error;
              setState(() {});
              pinputKey.currentState!.validate();
            } else if (status == AuthPinStatus.sendCodeAgainSuccess) {
              context.hideOverlayLoad;

              pinController.clear();
              errorInput = null;
              pinputKey.currentState!.validate();

              showOverlayNotification(
                (context) => GbOverlayAlert(
                  text: context.local.code_send_success,
                ),
              );
              _start = widget.confirmToken.resendTime;
              _confirmToken = widget.confirmToken;
              startTimer();
            } else if (status == AuthPinStatus.maxCheckCodeFinished) {
              context.hideOverlayLoad;
              showOverlayNotification(
                (context) => GbOverlayAlert(
                  text: context.local.request_limit_exceeded,
                  isError: true,
                ),
              );
            }
          });
        },
        builder: (context, state) {
          return Padding(
            padding: kPaddingScreen,
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      context.local.insert_code,
                      style: context.text.title,
                    ),
                    kSizedBoxVer32,
                    Text(
                      context.local.sms_verification_message,
                      style: context.text.appDescription,
                    ),
                    kSizedBoxVer32,
                    GbPinput(
                      pinputKey: pinputKey,
                      controller: pinController,
                      focusNode: pinFocus,
                      validator: (value) {
                        return errorInput;
                      },
                      onCompleted: (value) {
                        context.showOverlayLoad;
                        enteredCodeAfterNewSms = true;
                        errorInput = null;
                        authPinCubit.pinEnterCompleted(
                          confirmCode: pinController.text,
                          confirmToken: _confirmToken!,
                        );
                      },
                    ),
                  ],
                ),
                SafeArea(
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: GbIconTextButton(
                      text: context.local.get_the_code_again + timerMessage,
                      iconName: Assets.imagesReload,
                      onPressed: () {
                        if (_start == widget.confirmToken.resendTime ||
                            _start == 0) {
                          enteredCodeAfterNewSms = false;
                          context.showOverlayLoad;
                          authPinCubit.getCodeAgain(
                            phoneNumber: widget.phoneNumber,
                          );
                        }
                      },
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
