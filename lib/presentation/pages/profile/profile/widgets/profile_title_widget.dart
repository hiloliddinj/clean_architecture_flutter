import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:giftbow_mobile/core/extensions.dart';

import '../../../../../const/styles/assets.dart';

class ProfileTitleWidget extends StatelessWidget {
  final VoidCallback onAvatarTap;
  final String name;
  final String? urlAvatar;

  const ProfileTitleWidget({
    required this.onAvatarTap,
    required this.name,
    this.urlAvatar,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppLocalizations.of(context).hello,
              style: context.text.title,
            ),
            Text(
              name,
              style: context.text.title,
            ),
          ],
        ),
        GestureDetector(
          onTap: onAvatarTap,
          child: urlAvatar != null && urlAvatar!.isNotEmpty
              ? CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage(
                    urlAvatar!,
                  ),
                  backgroundColor: context.color.backgroundAvatarColor,
                )
              : Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: context.color.backgroundAvatarColor,
                  ),
                  child: SvgPicture.asset(
                    Assets.imagesUser,
                    colorFilter: ColorFilter.mode(
                      context.color.iconColor,
                      BlendMode.srcIn,
                    ),
                    fit: BoxFit.none,
                  ),
                ),
        ),
      ],
    );
  }
}
