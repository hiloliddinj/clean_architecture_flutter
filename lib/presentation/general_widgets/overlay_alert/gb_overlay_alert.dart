import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:giftbow_mobile/const/styles/radius.dart';
import 'package:giftbow_mobile/core/extensions.dart';

import '../../../const/styles/assets.dart';

class GbOverlayAlert extends StatelessWidget {
  final String text;
  final bool isError;

  const GbOverlayAlert({
    required this.text,
    this.isError = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: MediaQuery.of(context).viewPadding.top + 12,
      ),
      padding: const EdgeInsets.all(16),
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width,
      ),
      decoration: BoxDecoration(
        color: context.color.overlayAlert,
        borderRadius: kBorderRadius8,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SvgPicture.asset(
            isError ? Assets.imagesError : Assets.imagesSuccessfully,
            alignment: Alignment.topCenter,
          ),
          const SizedBox(
            width: 12,
          ),
          Flexible(
            child: DefaultTextStyle(
              style: isError
                  ? context.text.textErrorOverlayAlert
                  : context.text.textSuccessOverlayAlert,
              child: Text(
                text,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
