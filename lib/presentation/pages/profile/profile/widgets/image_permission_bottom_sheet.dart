import 'package:flutter/material.dart';
import 'package:giftbow_mobile/core/extensions.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../../general_widgets/buttons/gb_button.dart';
import '../../../../general_widgets/buttons/gb_text_button.dart';

class ImagePermissionBottomSheet extends StatelessWidget {
  const ImagePermissionBottomSheet({
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
                context.local.image_permission_bottom_sheet_title,
                style: context.text.title,
              ),
              Text(
                context.local.image_permission_bottom_sheet_subtitle,
                style: context.text.textBottomSheetSubtitle,
              ),
            ],
          ),
          const SizedBox(
            height: 32,
          ),
          GbButton(
            onPressed: () {
              openAppSettings();
              Navigator.pop(context);
            },
            text: context.local.open_settings,
          ),
          const SizedBox(
            height: 16,
          ),
          GbTextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            text: context.local.late,
          )
        ],
      ),
    );
  }
}
