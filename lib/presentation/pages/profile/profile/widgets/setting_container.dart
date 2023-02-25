import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:giftbow_mobile/core/extensions.dart';

import '../../../../../const/styles/radius.dart';

class SettingContainer extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final VoidCallback? onTap;

  const SettingContainer({
    required this.image,
    required this.title,
    required this.subtitle,
    this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 16,
        ),
        decoration: const BoxDecoration(
          borderRadius: kBorderRadius12,
          color: Color(0xFFF4F6F9),
        ),
        child: Wrap(
          direction: Axis.vertical,
          spacing: 12,
          children: [
            SvgPicture.asset(
              image,
            ),
            Text(
              title,
              style: context.text.textSettingContainerTitle,
            ),
            Text(
              subtitle,
              style: context.text.textSettingContainerSubtitle,
            ),
          ],
        ),
      ),
    );
  }
}
