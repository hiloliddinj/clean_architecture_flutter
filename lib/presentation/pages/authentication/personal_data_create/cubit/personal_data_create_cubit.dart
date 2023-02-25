import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../const/global_function.dart';
import '../../../../../core/usecases/usecases.dart';
import '../../../../../domain/entities/profile/profile_info/enum/gender.dart';
import '../../../../../domain/entities/profile/profile_info/profile.dart';
import '../../../../../domain/usecases/profile/get_profile_info.dart';
import '../../../../../domain/usecases/profile/update_profile_info.dart';

part 'personal_data_create_state.dart';

part 'personal_data_create_cubit.freezed.dart';

class PersonalDataCreateCubit extends Cubit<PersonalDataCreateState> {
  final UpdateProfileInfo updateProfileInfo;
  final GetProfileInfo getProfileInfo;

  PersonalDataCreateCubit({
    required this.updateProfileInfo,
    required this.getProfileInfo,
  }) : super(
          const PersonalDataCreateState.personalInfo(),
        );

  void createPersonalData({
    required String name,
    required String surname,
    required String birthday,
    required Gender gender,
  }) async {
    emit(
      const PersonalDataCreateState.personalInfo(
        status: PersonalDataCreateStatus.loading,
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
        PersonalDataCreateState.personalInfo(
          status: PersonalDataCreateStatus.error,
          error: mapFailureToMessage(l),
        ),
      ),
      (r) {},
    );
    if (state.status != PersonalDataCreateStatus.error) {
      final profileRemoteInfo = await getProfileInfo(NoParams());
      profileRemoteInfo.fold(
        (l) => emit(
          PersonalDataCreateState.personalInfo(
            status: PersonalDataCreateStatus.error,
            error: mapFailureToMessage(l),
          ),
        ),
        (r) => emit(
          PersonalDataCreateState.personalInfo(
            status: PersonalDataCreateStatus.success,
            profile: r,
          ),
        ),
      );
    }
  }
}
