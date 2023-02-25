import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:giftbow_mobile/core/extensions.dart';

import '../../../../../const/styles/assets.dart';

class TitlePersonalDataWidget extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const TitlePersonalDataWidget({
    required this.text,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Text(
            text,
            style: context.text.title,
          ),
          const SizedBox(
            width: 20,
          ),
          SvgPicture.asset(
            Assets.imagesPencil,
            colorFilter: ColorFilter.mode(
              context.color.iconColor,
              BlendMode.srcIn,
            ),
          ),
        ],
      ),
    );
  }
}
