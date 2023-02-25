part of 'personal_data_create_cubit.dart';

enum PersonalDataCreateStatus {
  init,
  loading,
  success,
  error,
}

@freezed
class PersonalDataCreateState with _$PersonalDataCreateState {
  const factory PersonalDataCreateState.personalInfo({
    @Default(PersonalDataCreateStatus.init) PersonalDataCreateStatus status,
    Profile? profile,
    String? error,
  }) = _PersonalDataCreateState;
}
