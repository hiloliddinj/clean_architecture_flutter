import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:giftbow_mobile/const/styles/assets.dart';
import 'package:giftbow_mobile/const/styles/radius.dart';
import 'package:giftbow_mobile/core/extensions.dart';
import 'package:shimmer/shimmer.dart';

class LoadProfileWidget extends StatelessWidget {
  const LoadProfileWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (
        context,
        constraint,
      ) {
        return Form(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 16,
            ),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: constraint.maxHeight,
                maxHeight: MediaQuery.of(context).size.height - 16,
              ),
              child: IntrinsicHeight(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Wrap(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            bottom: 32,
                          ),
                          child: Row(
                            children: [
                              Shimmer.fromColors(
                                baseColor: context.color.backgroundContainer,
                                highlightColor: const Color(0xFFDEDFE1),
                                child: SvgPicture.asset(
                                  Assets.imagesTitleProfileShimmer,
                                ),
                              ),
                              const Spacer(),
                              Shimmer.fromColors(
                                baseColor: context.color.backgroundContainer,
                                highlightColor: const Color(0xFFDEDFE1),
                                child: Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: context.color.backgroundContainer,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            bottom: 16,
                          ),
                          child: Shimmer.fromColors(
                            baseColor: context.color.backgroundContainer,
                            highlightColor: const Color(0xFFDEDFE1),
                            child: Container(
                              height: 168,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                color: context.color.backgroundContainer,
                                borderRadius: kBorderRadius12,
                              ),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Shimmer.fromColors(
                                baseColor: context.color.backgroundContainer,
                                highlightColor: const Color(0xFFDEDFE1),
                                child: Container(
                                  height: 120,
                                  decoration: BoxDecoration(
                                    color: context.color.backgroundContainer,
                                    borderRadius: kBorderRadius12,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            Expanded(
                              child: Shimmer.fromColors(
                                baseColor: context.color.backgroundContainer,
                                highlightColor: const Color(0xFFDEDFE1),
                                child: Container(
                                  height: 120,
                                  decoration: BoxDecoration(
                                    color: context.color.backgroundContainer,
                                    borderRadius: kBorderRadius12,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const Spacer(),
                    SafeArea(
                      child: Wrap(
                        direction: Axis.vertical,
                        spacing: 24,
                        children: [
                          Shimmer.fromColors(
                            baseColor: context.color.backgroundContainer,
                            highlightColor: const Color(0xFFDEDFE1),
                            child: Container(
                              height: 20,
                              width: 80,
                              decoration: BoxDecoration(
                                color: context.color.backgroundContainer,
                                borderRadius: kBorderRadius8,
                              ),
                            ),
                          ),
                          Shimmer.fromColors(
                            baseColor: context.color.backgroundContainer,
                            highlightColor: const Color(0xFFDEDFE1),
                            child: Container(
                              height: 20,
                              width: 80,
                              decoration: BoxDecoration(
                                color: context.color.backgroundContainer,
                                borderRadius: kBorderRadius8,
                              ),
                            ),
                          ),
                          Shimmer.fromColors(
                            baseColor: context.color.backgroundContainer,
                            highlightColor: const Color(0xFFDEDFE1),
                            child: Container(
                              height: 20,
                              width: 80,
                              decoration: BoxDecoration(
                                color: context.color.backgroundContainer,
                                borderRadius: kBorderRadius8,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
