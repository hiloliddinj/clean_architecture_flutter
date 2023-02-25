part of 'personal_data_edit_cubit.dart';

enum UpdatePersonalInfoStatus {
  init,
  loading,
  success,
  error,
}

@freezed
class PersonalDataEditState with _$PersonalDataEditState {
  const factory PersonalDataEditState.personalInfo({
    @Default(UpdatePersonalInfoStatus.init) UpdatePersonalInfoStatus status,
    Profile? profile,
    String? error,
  }) = PersonalInfoState;
}
