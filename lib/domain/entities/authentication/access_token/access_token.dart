class AccessToken {
  final String accessToken;

  AccessToken({
    required this.accessToken,
  });

  AccessToken copyWith({
    final String? accessToken,
  }) {
    return AccessToken(
      accessToken: accessToken ?? this.accessToken,
    );
  }
}
