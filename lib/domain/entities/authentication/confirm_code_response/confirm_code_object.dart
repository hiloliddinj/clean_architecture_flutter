class ConfirmCodeObject {
  final int sessionExpiry;
  final int countSmsSend;
  final int countTryCode;

  ConfirmCodeObject({
    required this.sessionExpiry,
    required this.countSmsSend,
    required this.countTryCode,
  });

  ConfirmCodeObject copyWith({
    final int? sessionExpiry,
    final int? countSmsSend,
    final int? countTryCode,
  }) {
    return ConfirmCodeObject(
      sessionExpiry: sessionExpiry ?? this.sessionExpiry,
      countSmsSend: countSmsSend ?? this.countSmsSend,
      countTryCode: sessionExpiry ?? this.countTryCode,
    );
  }
}
