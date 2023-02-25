part of 'auth_pin_cubit.dart';

enum AuthPinStatus {
  init,
  loading,
  sendCodeAgainSuccess,
  maxCheckCodeFinished,
  success,
  error,
}

@freezed
class AuthPinState with _$AuthPinState {
  const factory AuthPinState.nextButtonPressed({
    @Default(AuthPinStatus.init) AuthPinStatus status,
    ConfirmToken? confirmToken,
    String? error,
  }) = _AuthPinState;
}
