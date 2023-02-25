part of 'auth_phone_cubit.dart';

enum AuthPhoneStatus {
  init,
  loading,
  success,
  error,
}

@freezed
class AuthPhoneState with _$AuthPhoneState {
  const factory AuthPhoneState.nextButtonPressed({
    @Default(AuthPhoneStatus.init) AuthPhoneStatus status,
    ConfirmToken? confirmToken,
    String? error,
  }) = _AuthPhoneState;
}
