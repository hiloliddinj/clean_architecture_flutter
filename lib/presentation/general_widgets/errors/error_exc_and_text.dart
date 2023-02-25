import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:giftbow_mobile/core/extensions.dart';

import '../../../const/styles/assets.dart';
import '../../../const/styles/theme.dart';

class ErrorExcAndText extends StatelessWidget {
  final String message;
  const ErrorExcAndText({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: const BoxDecoration(
        color: AppColorsLight.hoar,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(width: 10),
            Padding(
              padding: const EdgeInsets.only(top: 3),
              child: SvgPicture.asset(Assets.imagesError),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                message,
                maxLines: 2,
                style: context.text.errorInfo,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
