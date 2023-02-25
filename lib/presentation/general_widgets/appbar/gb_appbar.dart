import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:giftbow_mobile/core/extensions.dart';

import '../../../const/styles/assets.dart';

class GbAppBar extends StatelessWidget with PreferredSizeWidget {
  final String titleText;
  final Widget leading;
  final double elevation;
  final List<Widget>? actions;
  final Color? color;
  final bool isBack;
  final SystemUiOverlayStyle? systemOverlayStyle;

  const GbAppBar({
    this.titleText = '',
    this.leading = const SizedBox(),
    this.elevation = 0.0,
    this.actions,
    this.color,
    this.isBack = false,
    this.systemOverlayStyle,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(titleText),
      leading: isBack
          ? IconButton(
              icon: SvgPicture.asset(
                Assets.imagesBack,
                colorFilter: ColorFilter.mode(
                  context.color.iconColor,
                  BlendMode.srcIn,
                ),
              ),
              onPressed: () {
                AutoRouter.of(context).pop();
              },
            )
          : leading,
      elevation: elevation,
      actions: actions,
      backgroundColor: color ?? context.color.appBarColor,
      systemOverlayStyle: systemOverlayStyle,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
