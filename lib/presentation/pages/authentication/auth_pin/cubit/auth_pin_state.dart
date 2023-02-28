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
  const factory AuthPinState.pinEnterCompleted({
    @Default(AuthPinStatus.init) AuthPinStatus status,
    String? error,
  }) = _AuthPinState;
}
