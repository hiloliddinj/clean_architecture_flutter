import 'package:flutter/material.dart';
import 'package:giftbow_mobile/core/extensions.dart';

import '../../../const/styles/radius.dart';

class GbTextButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final EdgeInsets padding;
  final TextStyle? textStyle;

  const GbTextButton({
    required this.onPressed,
    required this.text,
    this.padding = const EdgeInsets.all(20),
    this.textStyle,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.all(
          Colors.transparent,
        ),
        shape: MaterialStateProperty.all(
          const RoundedRectangleBorder(
            borderRadius: kBorderRadius12,
          ),
        ),
        padding: MaterialStateProperty.all(
          padding,
        ),
      ),
      child: Text(
        text,
        style: textStyle ?? context.text.textButton,
      ),
    );
  }
}
