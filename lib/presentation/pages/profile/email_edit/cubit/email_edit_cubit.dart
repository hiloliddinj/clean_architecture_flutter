import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../const/global_function.dart';
import '../../../../../core/usecases/usecases.dart';
import '../../../../../domain/entities/profile/profile_info/profile.dart';
import '../../../../../domain/usecases/profile/get_profile_info.dart';
import '../../../../../domain/usecases/profile/update_email.dart';

part 'email_edit_state.dart';

part 'email_edit_cubit.freezed.dart';

class EmailEditCubit extends Cubit<EmailEditState> {
  final UpdateEmail updateEmail;
  final GetProfileInfo getProfileInfo;

  EmailEditCubit({
    required this.updateEmail,
    required this.getProfileInfo,
  }) : super(const EmailEditState.editEmail());

  void editEmail({
    required String email,
  }) async {
    emit(
      const EditEmailState(
        status: EmailEditStatus.loading,
      ),
    );

    final editEmail = await updateEmail(
      Params(
        email: email,
      ),
    );
    editEmail.fold(
      (l) => emit(
        EmailEditState.editEmail(
          status: EmailEditStatus.error,
          error: mapFailureToMessage(l),
        ),
      ),
      (r) async {},
    );

    if (state.status != EmailEditStatus.error) {
      final profileRemoteInfo = await getProfileInfo(NoParams());
      profileRemoteInfo.fold(
        (l) => emit(
          EmailEditState.editEmail(
            status: EmailEditStatus.error,
            error: mapFailureToMessage(l),
          ),
        ),
        (r) => emit(
          EmailEditState.editEmail(
            status: EmailEditStatus.success,
            profile: r,
          ),
        ),
      );
    }
  }
}
