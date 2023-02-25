import 'package:flutter/material.dart';

import '../../../core/extensions.dart';

class GbCheckbox extends StatelessWidget {
  final ValueChanged<bool?>? onChanged;
  final bool value;

  const GbCheckbox({
    Key? key,
    required this.onChanged,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      onChanged: onChanged,
      checkColor: context.color.appBarColor,
      fillColor:
          MaterialStateProperty.all(context.color.circularIndicatorColor),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      side: MaterialStateBorderSide.resolveWith(
        (states) => BorderSide(
          width: 2.0,
          color: value
              ? context.color.circularIndicatorColor
              : context.color.iconColor,
        ),
      ),
      value: value,
    );
  }
}
