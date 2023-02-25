import 'package:flutter/material.dart';
import 'package:giftbow_mobile/core/extensions.dart';

class SettingItemWidget extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const SettingItemWidget({
    required this.text,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 20,
        ),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            text,
            style: context.text.profileSettingItem,
          ),
        ),
      ),
    );
  }
}
