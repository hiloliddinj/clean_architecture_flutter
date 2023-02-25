import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/extensions.dart';
import '../../../../const/styles/styles.dart';
import '../custom_outline.dart';

class GbDropdownTextField extends StatefulWidget {
  final String label;
  final FocusNode focusNode;
  final SingleValueDropDownController? controller;
  final GlobalKey<FormState>? validationKey;
  final EdgeInsets padding;
  final int maxLines;
  final String? Function(String?)? validator;
  final void Function(dynamic)? onChanged;
  final List<DropDownValueModel> listValue;

  const GbDropdownTextField({
    required this.label,
    required this.listValue,
    required this.focusNode,
    this.controller,
    this.validationKey,
    this.padding = const EdgeInsets.symmetric(
      horizontal: 16,
      vertical: 8,
    ),
    this.maxLines = 1,
    this.validator,
    this.onChanged,
    Key? key,
  }) : super(key: key);

  @override
  State<GbDropdownTextField> createState() => _GbDropdownTextFieldState();
}

class _GbDropdownTextFieldState extends State<GbDropdownTextField>
    with TickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
      upperBound: 0.5,
    );
    widget.focusNode.addListener(() {
      setState(() {
        if (widget.focusNode.hasFocus) {
          _controller.forward();
        } else {
          _controller.reverse();
        }
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DropDownTextField(
      controller: widget.controller,
      clearOption: false,
      dropDownIconProperty: null,
      textFieldDecoration: InputDecoration(
        contentPadding: widget.padding,
        fillColor: widget.focusNode.hasFocus
            ? context.color.focusedBackgroundTextFieldColor
            : context.color.unfocusedBackgroundTextFieldColor,
        filled: true,
        labelText: widget.label,
        labelStyle: context.text.labelTextField,
        suffixIcon: RotationTransition(
          turns: Tween(begin: 0.0, end: 1.0).animate(_controller),
          child: SvgPicture.asset(
            Assets.imagesExpand,
          ),
        ),
        suffixIconConstraints: const BoxConstraints(
          maxHeight: 8,
          maxWidth: 8,
        ),
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
            width: 0,
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
            width: 0,
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
      ),
      validator: widget.validator,
      dropDownItemCount: widget.listValue.length,
      dropDownList: widget.listValue,
      onChanged: widget.onChanged,
      textFieldFocusNode: widget.focusNode,
      searchFocusNode: widget.focusNode,
    );
  }
}
