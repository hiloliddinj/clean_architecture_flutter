import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:giftbow_mobile/core/extensions.dart';
import 'package:giftbow_mobile/presentation/navigation/router.dart';

import '../../../../general_widgets/buttons/gb_button.dart';
import '../../../../general_widgets/buttons/gb_text_button.dart';

class DeleteAccountBottomSheet extends StatelessWidget {
  const DeleteAccountBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Wrap(
            runSpacing: 32,
            children: [
              Text(
                context.local.delete,
                style: context.text.title,
              ),
              Text(
                context.local.delete_profile_subtitle,
                style: context.text.textBottomSheetSubtitle,
              ),
            ],
          ),
          const SizedBox(
            height: 32,
          ),
          GbButton(
            onPressed: () {
              Navigator.of(context).pop();
              AutoRouter.of(context).push(
                const DeleteAccountConfirmationScreenRoute(),
              );
            },
            text: context.local.delete,
          ),
          const SizedBox(
            height: 16,
          ),
          GbTextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            text: context.local.leave,
          )
        ],
      ),
    );
  }
}
