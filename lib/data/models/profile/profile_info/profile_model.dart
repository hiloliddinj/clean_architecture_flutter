import '../../../../domain/entities/profile/profile_info/enum/email_status.dart';
import '../../../../domain/entities/profile/profile_info/enum/gender.dart';
import '../../../../domain/entities/profile/profile_info/profile.dart';

import 'email_confirm_props_model.dart';

class ProfileModel extends Profile {
  ProfileModel({
    required int userId,
    required String phoneNumber,
    required String email,
    required EmailStatus emailStatus,
    EmailConfirmPropsModel? emailConfirmProps,
    String? avatarUrl,
    required String name,
    required String surname,
    required String birthday,
    required Gender gender,
  }) : super(
          userId: userId,
          phoneNumber: phoneNumber,
          email: email,
          emailStatus: emailStatus,
          emailConfirmProps: emailConfirmProps,
          avatarUrl: avatarUrl,
          name: name,
          surname: surname,
          birthday: birthday,
          gender: gender,
        );

  ProfileModel.fromJson(Map<String, dynamic> parsedJson)
      : super(
          userId: parsedJson['userId'],
          phoneNumber: parsedJson['phoneNumber'],
          email: parsedJson['email'],
          emailStatus: EmailStatus.values.byName(parsedJson['emailStatus']),
          emailConfirmProps: parsedJson['emailConfirmProps'] != null
              ? EmailConfirmPropsModel.fromJson(parsedJson['emailConfirmProps'])
              : null,
          avatarUrl: parsedJson['avatarUrl'],
          name: parsedJson['name'],
          surname: parsedJson['surname'],
          birthday: parsedJson['birthday'],
          gender: Gender.values.byName(parsedJson['gender']),
        );
}
