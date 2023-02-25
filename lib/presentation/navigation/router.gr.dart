// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    SplashScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const SplashScreen(),
      );
    },
    ProfileScreenRoute.name: (routeData) {
      final args = routeData.argsAs<ProfileScreenRouteArgs>(
          orElse: () => const ProfileScreenRouteArgs());
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: ProfileScreen(key: args.key),
      );
    },
    PersonalDataScreenRoute.name: (routeData) {
      final args = routeData.argsAs<PersonalDataScreenRouteArgs>(
          orElse: () => const PersonalDataScreenRouteArgs());
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: PersonalDataScreen(key: args.key),
      );
    },
    PersonalDataEditScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const PersonalDataEditScreen(),
      );
    },
    EmailEditScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const EmailEditScreen(),
      );
    },
    DeleteAccountConfirmationScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const DeleteAccountConfirmationScreen(),
      );
    },
    EmailConfirmationScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const EmailConfirmationScreen(),
      );
    },
    SupportScreenRoute.name: (routeData) {
      final args = routeData.argsAs<SupportScreenRouteArgs>(
          orElse: () => const SupportScreenRouteArgs());
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: SupportScreen(key: args.key),
      );
    },
    AvatarPreviewScreenRoute.name: (routeData) {
      final args = routeData.argsAs<AvatarPreviewScreenRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: AvatarPreviewScreen(
          urlAvatar: args.urlAvatar,
          key: args.key,
        ),
      );
    },
    AvatarEditScreenRoute.name: (routeData) {
      final args = routeData.argsAs<AvatarEditScreenRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: AvatarEditScreen(
          fileImage: args.fileImage,
          key: args.key,
        ),
      );
    },
    ImagePermissionScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const ImagePermissionScreen(),
      );
    },
    AuthPhoneScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const AuthPhoneScreen(),
      );
    },
    AuthPinScreenRoute.name: (routeData) {
      final args = routeData.argsAs<AuthPinScreenRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: AuthPinScreen(
          key: args.key,
          confirmToken: args.confirmToken,
          phoneNumber: args.phoneNumber,
        ),
      );
    },
    AgreementCheckboxScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const AgreementCheckboxScreen(),
      );
    },
    UserAgreementScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const UserAgreementScreen(),
      );
    },
    PersonalDataCreateScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const PersonalDataCreateScreen(),
      );
    },
    ContactsAccessScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const ContactsAccessScreen(),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          SplashScreenRoute.name,
          path: '/',
        ),
        RouteConfig(
          ProfileScreenRoute.name,
          path: 'profile',
        ),
        RouteConfig(
          PersonalDataScreenRoute.name,
          path: 'personal_data',
        ),
        RouteConfig(
          PersonalDataEditScreenRoute.name,
          path: 'personal_data_edit',
        ),
        RouteConfig(
          EmailEditScreenRoute.name,
          path: 'email_edit',
        ),
        RouteConfig(
          DeleteAccountConfirmationScreenRoute.name,
          path: 'delete_account_confirmation',
        ),
        RouteConfig(
          EmailConfirmationScreenRoute.name,
          path: 'email_confirmation',
        ),
        RouteConfig(
          SupportScreenRoute.name,
          path: 'support',
        ),
        RouteConfig(
          AvatarPreviewScreenRoute.name,
          path: 'avatar_preview',
        ),
        RouteConfig(
          AvatarEditScreenRoute.name,
          path: 'avatar_edit',
        ),
        RouteConfig(
          ImagePermissionScreenRoute.name,
          path: 'image_permission',
        ),
        RouteConfig(
          AuthPhoneScreenRoute.name,
          path: 'auth_phone',
        ),
        RouteConfig(
          AuthPinScreenRoute.name,
          path: 'auth_pin',
        ),
        RouteConfig(
          AgreementCheckboxScreenRoute.name,
          path: 'agreement_checkbox',
        ),
        RouteConfig(
          UserAgreementScreenRoute.name,
          path: 'user_agreement',
        ),
        RouteConfig(
          PersonalDataCreateScreenRoute.name,
          path: 'personal_data_create',
        ),
        RouteConfig(
          ContactsAccessScreenRoute.name,
          path: 'contacts_access',
        ),
      ];
}

/// generated route for
/// [SplashScreen]
class SplashScreenRoute extends PageRouteInfo<void> {
  const SplashScreenRoute()
      : super(
          SplashScreenRoute.name,
          path: '/',
        );

  static const String name = 'SplashScreenRoute';
}

/// generated route for
/// [ProfileScreen]
class ProfileScreenRoute extends PageRouteInfo<ProfileScreenRouteArgs> {
  ProfileScreenRoute({Key? key})
      : super(
          ProfileScreenRoute.name,
          path: 'profile',
          args: ProfileScreenRouteArgs(key: key),
        );

  static const String name = 'ProfileScreenRoute';
}

class ProfileScreenRouteArgs {
  const ProfileScreenRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'ProfileScreenRouteArgs{key: $key}';
  }
}

/// generated route for
/// [PersonalDataScreen]
class PersonalDataScreenRoute
    extends PageRouteInfo<PersonalDataScreenRouteArgs> {
  PersonalDataScreenRoute({Key? key})
      : super(
          PersonalDataScreenRoute.name,
          path: 'personal_data',
          args: PersonalDataScreenRouteArgs(key: key),
        );

  static const String name = 'PersonalDataScreenRoute';
}

class PersonalDataScreenRouteArgs {
  const PersonalDataScreenRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'PersonalDataScreenRouteArgs{key: $key}';
  }
}

/// generated route for
/// [PersonalDataEditScreen]
class PersonalDataEditScreenRoute extends PageRouteInfo<void> {
  const PersonalDataEditScreenRoute()
      : super(
          PersonalDataEditScreenRoute.name,
          path: 'personal_data_edit',
        );

  static const String name = 'PersonalDataEditScreenRoute';
}

/// generated route for
/// [EmailEditScreen]
class EmailEditScreenRoute extends PageRouteInfo<void> {
  const EmailEditScreenRoute()
      : super(
          EmailEditScreenRoute.name,
          path: 'email_edit',
        );

  static const String name = 'EmailEditScreenRoute';
}

/// generated route for
/// [DeleteAccountConfirmationScreen]
class DeleteAccountConfirmationScreenRoute extends PageRouteInfo<void> {
  const DeleteAccountConfirmationScreenRoute()
      : super(
          DeleteAccountConfirmationScreenRoute.name,
          path: 'delete_account_confirmation',
        );

  static const String name = 'DeleteAccountConfirmationScreenRoute';
}

/// generated route for
/// [EmailConfirmationScreen]
class EmailConfirmationScreenRoute extends PageRouteInfo<void> {
  const EmailConfirmationScreenRoute()
      : super(
          EmailConfirmationScreenRoute.name,
          path: 'email_confirmation',
        );

  static const String name = 'EmailConfirmationScreenRoute';
}

/// generated route for
/// [SupportScreen]
class SupportScreenRoute extends PageRouteInfo<SupportScreenRouteArgs> {
  SupportScreenRoute({Key? key})
      : super(
          SupportScreenRoute.name,
          path: 'support',
          args: SupportScreenRouteArgs(key: key),
        );

  static const String name = 'SupportScreenRoute';
}

class SupportScreenRouteArgs {
  const SupportScreenRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'SupportScreenRouteArgs{key: $key}';
  }
}

/// generated route for
/// [AvatarPreviewScreen]
class AvatarPreviewScreenRoute
    extends PageRouteInfo<AvatarPreviewScreenRouteArgs> {
  AvatarPreviewScreenRoute({
    required String urlAvatar,
    Key? key,
  }) : super(
          AvatarPreviewScreenRoute.name,
          path: 'avatar_preview',
          args: AvatarPreviewScreenRouteArgs(
            urlAvatar: urlAvatar,
            key: key,
          ),
        );

  static const String name = 'AvatarPreviewScreenRoute';
}

class AvatarPreviewScreenRouteArgs {
  const AvatarPreviewScreenRouteArgs({
    required this.urlAvatar,
    this.key,
  });

  final String urlAvatar;

  final Key? key;

  @override
  String toString() {
    return 'AvatarPreviewScreenRouteArgs{urlAvatar: $urlAvatar, key: $key}';
  }
}

/// generated route for
/// [AvatarEditScreen]
class AvatarEditScreenRoute extends PageRouteInfo<AvatarEditScreenRouteArgs> {
  AvatarEditScreenRoute({
    required File fileImage,
    Key? key,
  }) : super(
          AvatarEditScreenRoute.name,
          path: 'avatar_edit',
          args: AvatarEditScreenRouteArgs(
            fileImage: fileImage,
            key: key,
          ),
        );

  static const String name = 'AvatarEditScreenRoute';
}

class AvatarEditScreenRouteArgs {
  const AvatarEditScreenRouteArgs({
    required this.fileImage,
    this.key,
  });

  final File fileImage;

  final Key? key;

  @override
  String toString() {
    return 'AvatarEditScreenRouteArgs{fileImage: $fileImage, key: $key}';
  }
}

/// generated route for
/// [ImagePermissionScreen]
class ImagePermissionScreenRoute extends PageRouteInfo<void> {
  const ImagePermissionScreenRoute()
      : super(
          ImagePermissionScreenRoute.name,
          path: 'image_permission',
        );

  static const String name = 'ImagePermissionScreenRoute';
}

/// generated route for
/// [AuthPhoneScreen]
class AuthPhoneScreenRoute extends PageRouteInfo<void> {
  const AuthPhoneScreenRoute()
      : super(
          AuthPhoneScreenRoute.name,
          path: 'auth_phone',
        );

  static const String name = 'AuthPhoneScreenRoute';
}

/// generated route for
/// [AuthPinScreen]
class AuthPinScreenRoute extends PageRouteInfo<AuthPinScreenRouteArgs> {
  AuthPinScreenRoute({
    Key? key,
    required ConfirmToken confirmToken,
    required String phoneNumber,
  }) : super(
          AuthPinScreenRoute.name,
          path: 'auth_pin',
          args: AuthPinScreenRouteArgs(
            key: key,
            confirmToken: confirmToken,
            phoneNumber: phoneNumber,
          ),
        );

  static const String name = 'AuthPinScreenRoute';
}

class AuthPinScreenRouteArgs {
  const AuthPinScreenRouteArgs({
    this.key,
    required this.confirmToken,
    required this.phoneNumber,
  });

  final Key? key;

  final ConfirmToken confirmToken;

  final String phoneNumber;

  @override
  String toString() {
    return 'AuthPinScreenRouteArgs{key: $key, confirmToken: $confirmToken, phoneNumber: $phoneNumber}';
  }
}

/// generated route for
/// [AgreementCheckboxScreen]
class AgreementCheckboxScreenRoute extends PageRouteInfo<void> {
  const AgreementCheckboxScreenRoute()
      : super(
          AgreementCheckboxScreenRoute.name,
          path: 'agreement_checkbox',
        );

  static const String name = 'AgreementCheckboxScreenRoute';
}

/// generated route for
/// [UserAgreementScreen]
class UserAgreementScreenRoute extends PageRouteInfo<void> {
  const UserAgreementScreenRoute()
      : super(
          UserAgreementScreenRoute.name,
          path: 'user_agreement',
        );

  static const String name = 'UserAgreementScreenRoute';
}

/// generated route for
/// [PersonalDataCreateScreen]
class PersonalDataCreateScreenRoute extends PageRouteInfo<void> {
  const PersonalDataCreateScreenRoute()
      : super(
          PersonalDataCreateScreenRoute.name,
          path: 'personal_data_create',
        );

  static const String name = 'PersonalDataCreateScreenRoute';
}

/// generated route for
/// [ContactsAccessScreen]
class ContactsAccessScreenRoute extends PageRouteInfo<void> {
  const ContactsAccessScreenRoute()
      : super(
          ContactsAccessScreenRoute.name,
          path: 'contacts_access',
        );

  static const String name = 'ContactsAccessScreenRoute';
}
