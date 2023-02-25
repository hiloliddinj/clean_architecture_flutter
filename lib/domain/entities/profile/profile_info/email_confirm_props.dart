class EmailConfirmProps {
  String? newEmail;
  int? countTryCode;
  int? maxCheckCode;

  EmailConfirmProps({
    this.newEmail,
    this.countTryCode,
    this.maxCheckCode,
  });
}
