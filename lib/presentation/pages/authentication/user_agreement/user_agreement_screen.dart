import 'package:flutter/material.dart';

import '../../../../const/styles/paddings.dart';
import '../../../../core/extensions.dart';
import '../../../../const/styles/sized_boxes.dart';
import '../../../general_widgets/appbar/gb_appbar.dart';
import 'widgets/widgets.dart';

class UserAgreementScreen extends StatelessWidget {
  const UserAgreementScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const GbAppBar(
        isBack: true,
      ),
      body: Padding(
        padding: kPaddingScreen,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              context.local.user_agreement,
              style: context.text.title,
            ),
            kSizedBoxVer32,
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    UserAgreementText(
                      text: context.local.user_agreement_text_1,
                    ),
                    UserAgreementText(
                      text: context.local.user_agreement_text_2,
                    ),
                    UserAgreementText(
                      text: context.local.user_agreement_text_3,
                    ),
                    UserAgreementText(
                      text: context.local.user_agreement_text_4,
                    ),
                    UserAgreementText(
                      text: context.local.user_agreement_text_5,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
