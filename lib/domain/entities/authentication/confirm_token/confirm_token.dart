class ConfirmToken {
  final String confirmToken;
  final int resendTime;
  final int maxCheckCode;

  ConfirmToken({
    required this.confirmToken,
    required this.resendTime,
    required this.maxCheckCode,
  });

  ConfirmToken copyWith({
    final String? confirmToken,
    final int? resendTime,
    final int? maxCheckCode,
  }) {
    return ConfirmToken(
      confirmToken: confirmToken ?? this.confirmToken,
      resendTime: resendTime ?? this.resendTime,
      maxCheckCode: maxCheckCode ?? this.maxCheckCode,
    );
  }
}
