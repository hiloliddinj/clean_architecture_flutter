import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:giftbow_mobile/const/styles/assets.dart';
import 'package:giftbow_mobile/core/extensions.dart';
import 'package:giftbow_mobile/presentation/general_widgets/appbar/gb_appbar.dart';
import 'package:giftbow_mobile/presentation/general_widgets/buttons/gb_button.dart';
import 'package:giftbow_mobile/presentation/pages/profile/profile/bloc/profile_bloc.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../../core/service_locator.dart';
import '../profile/widgets/image_permission_bottom_sheet.dart';

class ImagePermissionScreen extends StatefulWidget {
  const ImagePermissionScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<ImagePermissionScreen> createState() => _ImagePermissionScreenState();
}

class _ImagePermissionScreenState extends State<ImagePermissionScreen> {
  final ProfileBloc profileBloc = locator<ProfileBloc>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const GbAppBar(
        isBack: true,
      ),
      body: Container(
        padding: const EdgeInsets.fromLTRB(
          20,
          16,
          30,
          32,
        ),
        child: Column(
          children: [
            Text(
              context.local.image_permission_title,
              style: context.text.title,
            ),
            const SizedBox(
              height: 32,
            ),
            Text(
              context.local.image_permission_subtitle,
              style: context.text.appDescription,
            ),
            const SizedBox(
              height: 80,
            ),
            SvgPicture.asset(
              Assets.imagesCamera,
              height: 56,
              width: 56,
            ),
            const Spacer(),
            GbButton(
              text: context.local.allow,
              onPressed: () async => allowImagePermission(context),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> allowImagePermission(BuildContext context) async {
    PermissionStatus imagePermissionStatus;
    if (Platform.isAndroid) {
      DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
      AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
      if (androidInfo.version.sdkInt <= 32) {
        imagePermissionStatus = await Permission.storage.request();
        if (imagePermissionStatus == PermissionStatus.granted ||
            imagePermissionStatus == PermissionStatus.limited) {
          if (mounted) {
            AutoRouter.of(context).pop();
            profileBloc.add(const ProfileEvent.pickNewAvatar());
          }
        }
        if (imagePermissionStatus == PermissionStatus.permanentlyDenied) {
          if (mounted) {
            showModalBottomSheet(
              context: context,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                ),
              ),
              builder: (context) {
                return const ImagePermissionBottomSheet();
              },
            );
          }
        }
      } else {
        imagePermissionStatus = await Permission.photos.request();
        if (imagePermissionStatus == PermissionStatus.granted ||
            imagePermissionStatus == PermissionStatus.limited) {
          if (mounted) {
            profileBloc.add(const ProfileEvent.pickNewAvatar());
            AutoRouter.of(context).pop();
          }
        }
        if (imagePermissionStatus == PermissionStatus.permanentlyDenied) {
          if (mounted) {
            showModalBottomSheet(
              context: context,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                ),
              ),
              builder: (context) {
                return const ImagePermissionBottomSheet();
              },
            );
          }
        }
      }
    } else {
      imagePermissionStatus = await Permission.photos.request();
      if (imagePermissionStatus == PermissionStatus.granted ||
          imagePermissionStatus == PermissionStatus.limited) {
        if (mounted) {
          profileBloc.add(const ProfileEvent.pickNewAvatar());
          AutoRouter.of(context).pop();
        }
      }
      if (imagePermissionStatus == PermissionStatus.permanentlyDenied) {
        if (mounted) {
          showModalBottomSheet(
            context: context,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
            ),
            builder: (context) {
              return const ImagePermissionBottomSheet();
            },
          );
        }
      }
    }
  }
}
