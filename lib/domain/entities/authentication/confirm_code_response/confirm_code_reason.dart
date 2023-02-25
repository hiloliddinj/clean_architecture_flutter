class ConfirmCodeReason {
  final String confirmCode;

  ConfirmCodeReason({
    required this.confirmCode,
  });

  ConfirmCodeReason copyWith({
    final String? confirmCode,
  }) {
    return ConfirmCodeReason(
      confirmCode: confirmCode ?? this.confirmCode,
    );
  }
}
