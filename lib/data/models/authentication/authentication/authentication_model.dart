import '../../../../domain/entities/authentication/authentication/auth_status.dart';
import '../../../../domain/entities/authentication/authentication/authentication.dart';

class AuthenticationModel extends Authentication {
  AuthenticationModel({
    required String accessToken,
    required String refreshToken,
    required AuthStatus status,
  }) : super(
          accessToken: accessToken,
          refreshToken: refreshToken,
          status: status,
        );

  AuthenticationModel.fromJson(Map<String, dynamic> parsedJson)
      : super(
          accessToken: parsedJson['accessToken'],
          refreshToken: parsedJson['refreshToken'],
          status: AuthStatus.values.byName(parsedJson['status']),
        );
}
