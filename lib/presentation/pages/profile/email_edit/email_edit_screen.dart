import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:giftbow_mobile/core/extensions.dart';
import 'package:giftbow_mobile/core/service_locator.dart';
import 'package:giftbow_mobile/presentation/navigation/router.dart';

import 'package:overlay_support/overlay_support.dart';

import '../../../general_widgets/appbar/gb_appbar.dart';
import '../../../general_widgets/buttons/gb_text_button.dart';
import '../../../general_widgets/overlay_alert/gb_overlay_alert.dart';
import '../../../general_widgets/text_field/gb_text_field.dart';
import '../profile/bloc/profile_bloc.dart';
import 'cubit/email_edit_cubit.dart';

class EmailEditScreen extends StatefulWidget {
  const EmailEditScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<EmailEditScreen> createState() => _EmailEditScreenState();
}

class _EmailEditScreenState extends State<EmailEditScreen> {
  final FocusNode emailFocus = FocusNode();
  final TextEditingController emailController = TextEditingController();

  final EmailEditCubit emailEditCubit = locator<EmailEditCubit>();
  ProfileBloc profileBloc = locator<ProfileBloc>();

  final RegExp emailRegExp =
      RegExp(r"^[a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  bool isValidEmail = true;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    emailController.text = profileBloc.state.profile!.email;
  }

  bool get isChangeEmail =>
      emailController.text.isNotEmpty &&
      emailController.text != profileBloc.state.profile!.email &&
      emailRegExp.hasMatch(emailController.text);

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    emailFocus.dispose();
    _debounce?.cancel();
  }

  Timer? _debounce;

  _onSearchChanged(String query) {
    setState(() {
      isValidEmail = true;
    });
    if (_debounce?.isActive ?? false) _debounce!.cancel();
    _debounce = Timer(
      const Duration(milliseconds: 500),
      () {
        setState(
          () {
            isValidEmail = emailRegExp.hasMatch(query);
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GbAppBar(
        isBack: true,
        actions: [
          isChangeEmail
              ? GbTextButton(
                  onPressed: () {
                    context.showOverlayLoad;
                    emailEditCubit.editEmail(
                      email: emailController.text,
                    );
                  },
                  text: context.local.done,
                  textStyle: context.text.textButtonAppBar,
                )
              : const SizedBox(),
        ],
      ),
      body: BlocConsumer<EmailEditCubit, EmailEditState>(
        bloc: emailEditCubit,
        listener: (context, state) {
          state.when(
            editEmail: (
              status,
              profile,
              error,
            ) {
              if (status == EmailEditStatus.success) {
                context.hideOverlayLoad;
                profileBloc.add(
                  ProfileEvent.updateProfileAllInfo(
                    profile: profile!,
                  ),
                );
                AutoRouter.of(context).popAndPush(
                  const EmailConfirmationScreenRoute(),
                );
              }
              if (status == EmailEditStatus.error && error != null) {
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
          return SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  context.local.email,
                  style: context.text.title,
                ),
                const SizedBox(
                  height: 32,
                ),
                Text(
                  context.local.edit_email_subtitle,
                  style: context.text.appDescription,
                ),
                const SizedBox(
                  height: 32,
                ),
                GbTextField(
                  label: context.local.email,
                  controller: emailController,
                  focusNode: emailFocus,
                  validator: (val) {
                    if (val == null || val.isEmpty) {
                      return 'Поле не может быть пустым';
                    }
                    if (!isValidEmail) {
                      return 'Это не email';
                    }
                    return null;
                  },
                  onChanged: _onSearchChanged,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
