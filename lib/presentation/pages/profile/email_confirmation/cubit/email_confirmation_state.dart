part of 'email_confirmation_cubit.dart';

enum EmailConfirmationStatus {
  init,
  loading,
  success,
  error,
}

@freezed
class EmailConfirmationState with _$EmailConfirmationState {
  const factory EmailConfirmationState.emailConfirmation({
    @Default(EmailConfirmationStatus.init) EmailConfirmationStatus status,
    String? error,
    Profile? profile,
    @Default(false) bool? isPermanentlyDenied,
  }) = ConfirmationEmailState;
}
