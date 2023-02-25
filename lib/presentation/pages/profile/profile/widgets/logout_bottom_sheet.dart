import 'package:flutter/material.dart';
import 'package:giftbow_mobile/core/extensions.dart';

import '../../../../general_widgets/buttons/gb_button.dart';
import '../../../../general_widgets/buttons/gb_text_button.dart';

class LogoutBottomSheet extends StatelessWidget {
  const LogoutBottomSheet({
    Key? key,
  }) : super(key: key);

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
                context.local.exit,
                style: context.text.title,
              ),
              Text(
                context.local.logout_subtitle,
                style: context.text.textBottomSheetSubtitle,
              ),
            ],
          ),
          const SizedBox(
            height: 32,
          ),
          GbButton(
            onPressed: () {},
            text: context.local.exit,
          ),
          const SizedBox(
            height: 16,
          ),
          GbTextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            text: context.local.stay,
          )
        ],
      ),
    );
  }
}
