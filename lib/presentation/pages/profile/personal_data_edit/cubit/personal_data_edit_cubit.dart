import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../const/global_function.dart';
import '../../../../../core/usecases/usecases.dart';
import '../../../../../domain/entities/profile/profile_info/enum/gender.dart';
import '../../../../../domain/entities/profile/profile_info/profile.dart';
import '../../../../../domain/usecases/profile/get_profile_info.dart';
import '../../../../../domain/usecases/profile/update_profile_info.dart';

part 'personal_data_edit_state.dart';

part 'personal_data_edit_cubit.freezed.dart';

class PersonalDataEditCubit extends Cubit<PersonalDataEditState> {
  final UpdateProfileInfo updateProfileInfo;
  final GetProfileInfo getProfileInfo;

  PersonalDataEditCubit({
    required this.updateProfileInfo,
    required this.getProfileInfo,
  }) : super(const PersonalDataEditState.personalInfo());

  void updatePersonalData({
    required String name,
    required String surname,
    required String birthday,
    required Gender gender,
  }) async {
    emit(
      const PersonalDataEditState.personalInfo(
        status: UpdatePersonalInfoStatus.loading,
      ),
    );

    final updatePersonalInfo = await updateProfileInfo(
      Params(
        name: name,
        surname: surname,
        birthday: birthday,
        gender: gender,
      ),
    );

    updatePersonalInfo.fold(
      (l) => emit(
        PersonalDataEditState.personalInfo(
          status: UpdatePersonalInfoStatus.error,
          error: mapFailureToMessage(l),
        ),
      ),
      (r) {},
    );
    if (state.status != UpdatePersonalInfoStatus.error) {
      final profileRemoteInfo = await getProfileInfo(NoParams());
      profileRemoteInfo.fold(
        (l) => emit(
          PersonalDataEditState.personalInfo(
            status: UpdatePersonalInfoStatus.error,
            error: mapFailureToMessage(l),
          ),
        ),
        (r) => emit(
          PersonalDataEditState.personalInfo(
            status: UpdatePersonalInfoStatus.success,
            profile: r,
          ),
        ),
      );
    }
  }
}
