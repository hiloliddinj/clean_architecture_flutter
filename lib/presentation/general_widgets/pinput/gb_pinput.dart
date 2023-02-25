import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:giftbow_mobile/core/extensions.dart';
import 'package:pinput/pinput.dart';

import '../../../const/styles/radius.dart';

class GbPinput extends StatelessWidget {
  final GlobalKey<FormState>? pinputKey;
  final int length;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final void Function(String)? onCompleted;

  const GbPinput({
    this.pinputKey,
    this.length = 4,
    this.validator,
    this.controller,
    this.focusNode,
    this.onCompleted,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 42,
      height: 56,
      textStyle: context.text.contentTextField,
      decoration: const BoxDecoration(
        borderRadius: kBorderRadius12,
      ),
    );

    return Form(
      key: pinputKey,
      child: Pinput(
        controller: controller,
        focusNode: focusNode,
        length: length,
        onCompleted: onCompleted,
        autofocus: true,
        keyboardType: const TextInputType.numberWithOptions(decimal: true),
        inputFormatters: [
          FilteringTextInputFormatter.allow(RegExp('[0-9.,]+')),
        ],
        separator: const SizedBox(width: 12),
        preFilledWidget: Container(
          height: 2,
          width: 10,
          decoration: BoxDecoration(
            color: context.color.pinputCursorColor,
            borderRadius: BorderRadius.circular(2),
          ),
        ),
        showCursor: true,
        cursor: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 2,
              width: 10,
              margin: const EdgeInsets.only(bottom: 14),
              decoration: BoxDecoration(
                color: context.color.pinputCursorColor,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ],
        ),
        defaultPinTheme: defaultPinTheme,
        errorPinTheme: defaultPinTheme.copyWith(
          decoration: BoxDecoration(
            color: context.color.unfocusedBackgroundTextFieldColor,
            borderRadius: kBorderRadius12,
            border: Border.all(
              color: context.color.errorBorderTextFieldColor,
            ),
          ),
        ),
        followingPinTheme: defaultPinTheme.copyWith(
          decoration: BoxDecoration(
            color: context.color.unfocusedBackgroundTextFieldColor,
            borderRadius: kBorderRadius12,
          ),
        ),
        submittedPinTheme: defaultPinTheme.copyWith(
          decoration: BoxDecoration(
            color: context.color.unfocusedBackgroundTextFieldColor,
            borderRadius: kBorderRadius12,
          ),
        ),
        focusedPinTheme: defaultPinTheme.copyWith(
          decoration: BoxDecoration(
            color: context.color.focusedBackgroundTextFieldColor,
            borderRadius: kBorderRadius12,
            border: Border.all(
              color: context.color.borderTextFieldColor,
            ),
          ),
        ),
        pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
        validator: validator,
        errorBuilder: (errorText, pin) {
          return errorText != null
              ? Padding(
                  padding: const EdgeInsets.only(
                    left: 16,
                    top: 16,
                  ),
                  child: Text(
                    errorText,
                    style: context.text.errorTextField,
                  ),
                )
              : const SizedBox();
        },
      ),
    );
  }
}
