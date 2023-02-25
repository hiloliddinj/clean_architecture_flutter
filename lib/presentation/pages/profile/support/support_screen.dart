import 'package:flutter/material.dart';
import 'package:giftbow_mobile/core/extensions.dart';

import '../../../general_widgets/appbar/gb_appbar.dart';
import '../../../general_widgets/buttons/gb_text_button.dart';
import '../../../general_widgets/text_field/gb_text_field.dart';

class SupportScreen extends StatelessWidget {
  SupportScreen({Key? key}) : super(key: key);

  final FocusNode nameFocusNode = FocusNode();
  final FocusNode emailFocusNode = FocusNode();
  final FocusNode messageFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GbAppBar(
        isBack: true,
        actions: [
          GbTextButton(
            onPressed: () {},
            text: context.local.send,
            textStyle: context.text.textButtonAppBar,
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              context.local.help,
              style: context.text.title,
            ),
            const SizedBox(
              height: 32,
            ),
            Text(
              context.local.send_message_support_subtitle,
              style: context.text.appDescription,
            ),
            const SizedBox(
              height: 32,
            ),
            GbTextField(
              label: context.local.name,
              initialValue: 'Александра',
              focusNode: nameFocusNode,
            ),
            const SizedBox(
              height: 20,
            ),
            GbTextField(
              label: context.local.email,
              initialValue: 'nekrasova@company.com',
              focusNode: emailFocusNode,
            ),
            const SizedBox(
              height: 20,
            ),
            GbTextField(
              maxLines: 6,
              label: context.local.message,
              focusNode: messageFocusNode,
            ),
          ],
        ),
      ),
    );
  }
}
