import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/extensions.dart';
import '../../../../presentation/navigation/router.dart';
import '../../../../const/styles/styles.dart';
import '../../../general_widgets/appbar/gb_appbar.dart';
import '../../../general_widgets/buttons/gb_bottom_button.dart';
import '../../../general_widgets/checkboxes/gb_checkbox.dart';

class AgreementCheckboxScreen extends StatefulWidget {
  const AgreementCheckboxScreen({Key? key}) : super(key: key);

  @override
  State<AgreementCheckboxScreen> createState() =>
      _AgreementCheckboxScreenState();
}

class _AgreementCheckboxScreenState extends State<AgreementCheckboxScreen> {
  bool isChecked = false;
  late TapGestureRecognizer _agreementRecognizer;
  late TapGestureRecognizer _privacyPolicyRecognizer;

  void _handleAgreementTapped() {
    AutoRouter.of(context).push(
      const UserAgreementScreenRoute(),
    );
  }

  void _handlePrivacyTapped() {}

  @override
  void initState() {
    super.initState();
    _agreementRecognizer = TapGestureRecognizer()
      ..onTap = _handleAgreementTapped;
    _privacyPolicyRecognizer = TapGestureRecognizer()
      ..onTap = _handlePrivacyTapped;
  }

  @override
  void dispose() {
    _agreementRecognizer.dispose();
    _privacyPolicyRecognizer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GbAppBar(
        leading: SvgPicture.asset(
          Assets.imagesHandShake,
          fit: BoxFit.none,
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: kPaddingScreen,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  context.local.consent_required,
                  style: context.text.title,
                ),
                kSizedBoxVer32,
                Text(
                  context.local.consent_required_subtitle,
                  style: context.text.appDescription,
                ),
                kSizedBoxVer32,
                SizedBox(
                  width: MediaQuery.of(context).size.width - 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                          right: 20,
                        ),
                        height: 20,
                        width: 20,
                        child: Center(
                          child: GbCheckbox(
                            onChanged: (bool? value) {
                              setState(() {
                                isChecked = value!;
                              });
                            },
                            value: isChecked,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 20,
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  context.local.accept_and_agree,
                                  style: isChecked
                                      ? context.text.textBlack16
                                      : context.text.textGrey16,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: context.local.consent_1,
                                    style: context.text.appDescription,
                                  ),
                                  TextSpan(
                                    text: context.local.consent_2,
                                    style: context.text.textClickableContent,
                                    recognizer: _agreementRecognizer,
                                    mouseCursor: SystemMouseCursors.precise,
                                  ),
                                  TextSpan(
                                    text: context.local.consent_3,
                                    style: context.text.appDescription,
                                  ),
                                  TextSpan(
                                    text: context.local.consent_4,
                                    style: context.text.textClickableContent,
                                    recognizer: _privacyPolicyRecognizer,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          GbBottomButton(
            onPressed: () {
              if (isChecked) {
                AutoRouter.of(context).replaceAll(
                  [
                    const PersonalDataCreateScreenRoute(),
                  ],
                );
              }
            },
            text: context.local.next,
            isDisable: !isChecked,
          ),
        ],
      ),
    );
  }
}
