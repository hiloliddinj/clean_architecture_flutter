import 'package:flutter/material.dart';
import 'package:giftbow_mobile/core/extensions.dart';

import '../../../../../const/styles/theme.dart';

class UserAgreementText extends StatelessWidget {
  final String text;
  const UserAgreementText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          style: context.text.appDescription.copyWith(
            fontSize: 16,
            color: AppColorsLight.black,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
