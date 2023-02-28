import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../../core/extensions.dart';
import '../../../../const/styles/styles.dart';
import '../../../general_widgets/appbar/gb_appbar.dart';
import '../../../general_widgets/buttons/gb_bottom_button.dart';
import '../../../navigation/router.dart';

class ContactsAccessScreen extends StatelessWidget {
  const ContactsAccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GbAppBar(
        leading: SvgPicture.asset(
          Assets.imagesHandOk,
          fit: BoxFit.none,
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: kPaddingScreen,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  context.local.allow_access_to_contacts,
                  style: context.text.title,
                ),
                kSizedBoxVer32,
                Text(
                  context.local.allow_access_to_contacts_subtitle,
                  style: context.text.appDescription,
                ),
              ],
            ),
          ),
          const Spacer(),
          GbBottomButton(
            onPressed: () async => _allowContactsPermission(context),
            text: context.local.allow,
            isDisable: false,
          ),
        ],
      ),
    );
  }

  Future<void> _allowContactsPermission(BuildContext context) async {
    final status = await Permission.contacts.request();
    if (status.isGranted && context.mounted) {
      AutoRouter.of(context).replaceAll(
        [
          ProfileScreenRoute(),
        ],
      );
    }
  }
}
