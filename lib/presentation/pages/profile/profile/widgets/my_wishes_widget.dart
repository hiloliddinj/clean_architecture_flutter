import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:giftbow_mobile/core/extensions.dart';

import '../../../../../const/styles/assets.dart';
import '../../../../../const/styles/radius.dart';

class MyWishesWidget extends StatelessWidget {
  const MyWishesWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 16,
      ),
      decoration: const BoxDecoration(
          borderRadius: kBorderRadius12,
          color: Color(0xFFC2DDFF),
          gradient:
              RadialGradient(radius: 1, center: Alignment(-0.5, 0.7), colors: [
            Color(0xFFDFC3FE),
            Color(0xFF75B5FD),
          ], stops: [
            0.5,
            1,
          ])),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Wrap(
                direction: Axis.vertical,
                spacing: 12,
                children: [
                  SvgPicture.asset(
                    Assets.imagesHeartRed,
                  ),
                  Text(
                    context.local.my_wishes,
                    style: context.text.textWishTitle,
                  ),
                  Text(
                    context.local.on_my_birthday,
                    style: context.text.textWishSubtitle,
                  ),
                ],
              ),
              const SizedBox(
                height: 32,
              ),
              SizedBox(
                width: 240,
                child: Stack(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: const Color(0xFFe1c5ff),
                          width: 2,
                        ),
                        color: Colors.white,
                      ),
                    ),
                    Positioned(
                      left: 26.0,
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: const Color(0xFFe1c5ff),
                            width: 2,
                          ),
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 52.0,
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: const Color(0xFFe1c5ff),
                            width: 2,
                          ),
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 78.0,
                      child: Container(
                        height: 42,
                        width: 42,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: const Color(0xFFe1c5ff),
                            width: 2,
                          ),
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 104.0,
                      child: Container(
                        height: 42,
                        width: 42,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: const Color(0xFFe1c5ff),
                            width: 2,
                          ),
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Text(
                            '+2',
                            style: context.text.textMyWishCounter,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
