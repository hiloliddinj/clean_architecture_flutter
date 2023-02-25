import 'package:flutter/material.dart';
import 'package:giftbow_mobile/core/extensions.dart';

import '../../../general_widgets/appbar/gb_appbar.dart';
import '../../../general_widgets/buttons/gb_text_button.dart';
import '../../../general_widgets/pinput/gb_pinput.dart';

class DeleteAccountConfirmationScreen extends StatelessWidget {
  const DeleteAccountConfirmationScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GbAppBar(
        isBack: true,
        actions: [
          GbTextButton(
            onPressed: () {},
            text: context.local.done,
            textStyle: context.text.textButtonAppBar,
          ),
        ],
      ),
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
              context.local.confirmation_delete_account_subtitle,
              style: context.text.appDescription,
            ),
            const SizedBox(
              height: 32,
            ),
            GbPinput(
              validator: (value) {
                if (value!.length == 4) {
                  return 'Error';
                }
                return '';
              },
            ),
          ],
        ),
      ),
    );
  }
}
