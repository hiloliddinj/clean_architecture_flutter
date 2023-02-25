import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../core/extensions.dart';
import '../../../const/styles/radius.dart';
import 'custom_outline.dart';

class GbTextField extends StatefulWidget {
  final String label;
  final FocusNode focusNode;
  final TextEditingController? controller;
  final GlobalKey<FormState>? validationKey;
  final String? initialValue;
  final EdgeInsets padding;
  final int maxLines;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final void Function()? onTap;
  final void Function(PointerDownEvent)? onTapOutside;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;

  const GbTextField({
    required this.label,
    required this.focusNode,
    this.controller,
    this.validationKey,
    this.initialValue,
    this.padding = const EdgeInsets.symmetric(
      horizontal: 16,
      vertical: 8,
    ),
    this.maxLines = 1,
    this.validator,
    this.onChanged,
    this.onTap,
    this.onTapOutside,
    this.inputFormatters,
    this.keyboardType,
    Key? key,
  }) : super(key: key);

  @override
  State<GbTextField> createState() => _GbTextFieldState();
}

class _GbTextFieldState extends State<GbTextField> {
  @override
  void initState() {
    super.initState();
    widget.focusNode.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.validationKey,
      child: TextFormField(
        initialValue: widget.initialValue,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        controller: widget.controller,
        inputFormatters: widget.inputFormatters,
        onChanged: widget.onChanged,
        onTap: widget.onTap,
        onTapOutside: widget.onTapOutside,
        validator: widget.validator,
        maxLines: widget.maxLines,
        focusNode: widget.focusNode,
        style: context.text.contentTextField,
        cursorColor: context.color.cursorColor,
        keyboardType: widget.keyboardType,
        decoration: InputDecoration(
          alignLabelWithHint: widget.maxLines == 1 ? false : true,
          contentPadding: widget.padding,
          errorMaxLines: 3,
          focusedBorder: CustomOutlineInputBorder(
            borderRadius: kBorderRadius12,
            borderSide: BorderSide(
              width: 0,
              color: context.color.borderTextFieldColor,
            ),
          ),
          disabledBorder: const CustomOutlineInputBorder(
            borderRadius: kBorderRadius12,
            borderSide: BorderSide(
              width: 0,
            ),
          ),
          enabledBorder: CustomOutlineInputBorder(
            borderRadius: kBorderRadius12,
            borderSide: BorderSide(
              width: 1,
              color: context.color.focusedBackgroundTextFieldColor,
            ),
          ),
          border: const CustomOutlineInputBorder(
            borderRadius: kBorderRadius12,
            borderSide: BorderSide(
              width: 0,
            ),
          ),
          errorBorder: CustomOutlineInputBorder(
            borderRadius: kBorderRadius12,
            borderSide: BorderSide(
              width: 1,
              color: context.color.errorBorderTextFieldColor,
            ),
          ),
          focusedErrorBorder: CustomOutlineInputBorder(
            borderRadius: kBorderRadius12,
            borderSide: BorderSide(
              width: 0,
              color: context.color.errorBorderTextFieldColor,
            ),
          ),
          labelText: widget.label,
          labelStyle: widget.focusNode.hasFocus ||
                  (widget.controller != null &&
                      widget.controller!.text.isNotEmpty)
              ? context.text.labelTextField
              : context.text.hollowLabelTextField,
          errorStyle: context.text.errorTextField,
          fillColor: widget.focusNode.hasFocus
              ? context.color.focusedBackgroundTextFieldColor
              : context.color.unfocusedBackgroundTextFieldColor,
          filled: true,
        ),
      ),
    );
  }
}
