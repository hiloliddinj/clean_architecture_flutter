import 'auth_status.dart';

class Authentication {
  final String accessToken;
  final String refreshToken;
  final AuthStatus status;

  Authentication({
    required this.accessToken,
    required this.refreshToken,
    required this.status,
  });

  Authentication copyWith({
    final String? accessToken,
    final String? refreshToken,
    final AuthStatus? status,
  }) {
    return Authentication(
      accessToken: accessToken ?? this.accessToken,
      refreshToken: refreshToken ?? this.refreshToken,
      status: status ?? this.status,

    );
  }
}