import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';

import '../../../const/styles/paddings.dart';
import 'gb_button.dart';

class GbBottomButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  final bool? isDisable;

  const GbBottomButton({
    Key? key,
    required this.onPressed,
    required this.text,
    this.isDisable,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: KeyboardVisibilityBuilder(
          builder: (context, isKeyboardVisible) {
            return Padding(
              padding: isKeyboardVisible ? kPaddingBottom20 : kPaddingBottom32,
              child: GbButton(
                onPressed: onPressed,
                text: text,
                isDisable: isDisable,
              ),
            );
          },
        ),
      ),
    );
  }
}
