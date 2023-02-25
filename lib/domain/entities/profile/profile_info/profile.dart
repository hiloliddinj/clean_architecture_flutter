import 'email_confirm_props.dart';
import 'enum/email_status.dart';
import 'enum/gender.dart';

class Profile {
  final int userId;
  final String phoneNumber;
  final String email;
  final EmailStatus emailStatus;
  final EmailConfirmProps? emailConfirmProps;
  final String? avatarUrl;
  final String name;
  final String surname;
  final String birthday;
  final Gender gender;

  Profile({
    required this.userId,
    required this.phoneNumber,
    required this.email,
    required this.emailStatus,
    this.emailConfirmProps,
    this.avatarUrl,
    required this.name,
    required this.surname,
    required this.birthday,
    required this.gender,
  });

  Profile copyWith({
    final int? userId,
    final String? phoneNumber,
    final String? email,
    final EmailStatus? emailStatus,
    final EmailConfirmProps? emailConfirmProps,
    final String? avatarUrl,
    final String? name,
    final String? surname,
    final String? birthday,
    final Gender? gender,
  }) {
    return Profile(
      userId: userId ?? this.userId,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      email: email ?? this.email,
      emailStatus: emailStatus ?? this.emailStatus,
      emailConfirmProps: emailConfirmProps ?? this.emailConfirmProps,
      avatarUrl: avatarUrl ?? this.avatarUrl,
      name: name ?? this.name,
      surname: surname ?? this.surname,
      birthday: birthday ?? this.birthday,
      gender: gender ?? this.gender,
    );
  }
}
