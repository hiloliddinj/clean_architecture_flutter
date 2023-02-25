import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:giftbow_mobile/presentation/pages/authentication/auth_phone/auth_phone_screen.dart';
import 'package:giftbow_mobile/presentation/pages/authentication/personal_data_create/personal_data_create_screen.dart';
import 'package:giftbow_mobile/presentation/pages/authentication/user_agreement/user_agreement_screen.dart';

import '../../domain/entities/authentication/confirm_token/confirm_token.dart';
import '../pages/authentication/agreement_checkbox/agreement_checkbox_screen.dart';
import '../pages/authentication/auth_pin/auth_pin_screen.dart';
import '../pages/authentication/contacts_access/contacts_access_screen.dart';
import '../pages/profile/avatar_edit/avatar_edit_screen.dart';
import '../pages/profile/avatar_preview/avatar_preview_screen.dart';
import '../pages/profile/delete_account_confirmation/delete_account_confirmation_screen.dart';
import '../pages/profile/email_confirmation/email_confirmation_screen.dart';
import '../pages/profile/email_edit/email_edit_screen.dart';
import '../pages/profile/image_permission/image_permission_screen.dart';
import '../pages/profile/personal_data/personal_data_screen.dart';
import '../pages/profile/personal_data_edit/personal_data_edit_screen.dart';
import '../pages/profile/profile/profile_screen.dart';
import '../pages/profile/support/support_screen.dart';
import '../pages/splash/splash_screen.dart';

part 'router.gr.dart';

// flutter packages pub run build_runner build --delete-conflicting-outputs

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route,Screen',
  routes: <AutoRoute>[
    AutoRoute(
      path: '/',
      page: SplashScreen,
      initial: true,
    ),
    AutoRoute(
      path: 'profile',
      page: ProfileScreen,
    ),
    AutoRoute(
      path: 'personal_data',
      page: PersonalDataScreen,
    ),
    AutoRoute(
      path: 'personal_data_edit',
      page: PersonalDataEditScreen,
    ),
    AutoRoute(
      path: 'email_edit',
      page: EmailEditScreen,
    ),
    AutoRoute(
      path: 'delete_account_confirmation',
      page: DeleteAccountConfirmationScreen,
    ),
    AutoRoute(
      path: 'email_confirmation',
      page: EmailConfirmationScreen,
    ),
    AutoRoute(
      path: 'support',
      page: SupportScreen,
    ),
    AutoRoute(
      path: 'avatar_preview',
      page: AvatarPreviewScreen,
    ),
    AutoRoute(
      path: 'avatar_edit',
      page: AvatarEditScreen,
    ),
    AutoRoute(
      path: 'image_permission',
      page: ImagePermissionScreen,
    ),
    AutoRoute(
      path: 'auth_phone',
      page: AuthPhoneScreen,
    ),
    AutoRoute(
      path: 'auth_pin',
      page: AuthPinScreen,
    ),
    AutoRoute(
      path: 'agreement_checkbox',
      page: AgreementCheckboxScreen,
    ),
    AutoRoute(
      path: 'user_agreement',
      page: UserAgreementScreen,
    ),
    AutoRoute(
      path: 'personal_data_create',
      page: PersonalDataCreateScreen,
    ),
    AutoRoute(
      path: 'contacts_access',
      page: ContactsAccessScreen,
    ),
  ],
)
class AppRouter extends _$AppRouter {}
