import 'package:flutter/material.dart';
import 'package:giftbow_mobile/core/extensions.dart';

import '../../../const/styles/radius.dart';

class GbButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final EdgeInsets? padding;
  final BorderRadius? radius;
  final Color? backgroundColor;
  final TextStyle? textStyle;
  final Color? backgroundDisableColor;
  final TextStyle? textDisableStyle;
  final bool? isDisable;
  final bool? isSmall;
  final bool? isNegative;

  const GbButton({
    required this.text,
    this.onPressed,
    this.padding = const EdgeInsets.symmetric(
      horizontal: 30,
      vertical: 18,
    ),
    this.radius = kBorderRadius12,
    this.backgroundColor,
    this.textStyle,
    this.backgroundDisableColor,
    this.textDisableStyle,
    this.isDisable = false,
    this.isSmall = false,
    this.isNegative = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(0),
        backgroundColor: MaterialStateProperty.all(
          !isNegative!
              ? isDisable!
                  ? backgroundDisableColor ?? context.color.buttonDisableColor
                  : backgroundColor ?? context.color.buttonColor
              : context.color.buttonNegativeColor,
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: radius!,
          ),
        ),
        padding: MaterialStateProperty.all(
          isSmall!
              ? const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                )
              : padding,
        ),
      ),
      child: Text(
        text,
        style: !isNegative!
            ? isDisable!
                ? textDisableStyle ?? context.text.textInDisableButton
                : textStyle ?? context.text.textInButton
            : context.text.textInNegativeButton,
      ),
    );
  }
}
