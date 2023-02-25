part of 'email_edit_cubit.dart';

enum EmailEditStatus {
  init,
  loading,
  success,
  error,
}

@freezed
class EmailEditState with _$EmailEditState {
  const factory EmailEditState.editEmail({
    @Default(EmailEditStatus.init) EmailEditStatus status,
    Profile? profile,
    String? error,
  }) = EditEmailState;
}
