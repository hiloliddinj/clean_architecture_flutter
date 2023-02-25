import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:giftbow_mobile/core/extensions.dart';

class GbIconTextButton extends StatelessWidget {
  final String text;
  final String iconName;
  final VoidCallback onPressed;
  final Color? textColor;
  final Color? iconColor;

  const GbIconTextButton({
    required this.text,
    required this.iconName,
    required this.onPressed,
    this.textColor,
    this.iconColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          Colors.transparent,
        ),
        overlayColor: MaterialStateProperty.all(
          Colors.transparent,
        ),
        shadowColor: MaterialStateProperty.all(
          Colors.transparent,
        ),
        padding: MaterialStateProperty.all(
          EdgeInsets.zero,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            iconName,
            colorFilter: ColorFilter.mode(
              iconColor ?? context.color.iconColor,
              BlendMode.srcIn,
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Text(
            text,
            style: textColor != null
                ? context.text.textInIconButton.copyWith(
                    color: textColor,
                  )
                : context.text.textInIconButton,
          ),
        ],
      ),
    );
  }
}
