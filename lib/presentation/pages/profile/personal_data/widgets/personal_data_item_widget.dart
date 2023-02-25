import 'package:flutter/material.dart';
import 'package:giftbow_mobile/core/extensions.dart';

class PersonalDataItemWidget extends StatelessWidget {
  final String typeData;
  final String data;
  final bool isError;
  final Widget? action;

  const PersonalDataItemWidget({
    required this.typeData,
    required this.data,
    this.isError = false,
    this.action,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            typeData,
            style: isError
                ? context.text.errorTextField
                : context.text.labelTextField,
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            data,
            style: context.text.contentTextField,
          ),
          action != null
              ? Align(
                  alignment: Alignment.centerRight,
                  child: action,
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
