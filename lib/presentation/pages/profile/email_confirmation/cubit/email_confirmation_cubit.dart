import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../const/global_function.dart';
import '../../../../../core/error/failure.dart';
import '../../../../../core/usecases/usecases.dart';
import '../../../../../domain/entities/profile/profile_info/profile.dart';
import '../../../../../domain/usecases/profile/confirmation_email_change.dart';
import '../../../../../domain/usecases/profile/get_profile_info.dart';

part 'email_confirmation_state.dart';

part 'email_confirmation_cubit.freezed.dart';

class EmailConfirmationCubit extends Cubit<EmailConfirmationState> {
  final ConfirmationEmailChange confirmationEmailChange;
  final GetProfileInfo getProfileInfo;

  EmailConfirmationCubit({
    required this.confirmationEmailChange,
    required this.getProfileInfo,
  }) : super(const EmailConfirmationState.emailConfirmation());

  void confirmEmail({
    required String confirmCode,
  }) async {
    emit(
      const EmailConfirmationState.emailConfirmation(
        status: EmailConfirmationStatus.loading,
      ),
    );

    final confirmationEmail = await confirmationEmailChange(
      Params(
        confirmCode: confirmCode,
      ),
    );

    confirmationEmail.fold(
      (l) {
        String errorText;
        if (l is ServerFailure) {
          if (l.code == 403) {
            errorText = l.message!;
            emit(
              EmailConfirmationState.emailConfirmation(
                status: EmailConfirmationStatus.error,
                error: errorText,
                isPermanentlyDenied: true,
              ),
            );
          } else if (l.code == 400) {
            errorText = l.message!;
            if (l.data!['countTryCode'] <= 0) {
              emit(
                EmailConfirmationState.emailConfirmation(
                  status: EmailConfirmationStatus.error,
                  error: errorText,
                  isPermanentlyDenied: true,
                ),
              );
            } else {
              emit(
                EmailConfirmationState.emailConfirmation(
                  status: EmailConfirmationStatus.error,
                  error: errorText,
                ),
              );
            }
          } else {
            emit(
              EmailConfirmationState.emailConfirmation(
                status: EmailConfirmationStatus.error,
                error: mapFailureToMessage(l),
              ),
            );
          }
        } else {
          emit(
            EmailConfirmationState.emailConfirmation(
              status: EmailConfirmationStatus.error,
              error: mapFailureToMessage(l),
            ),
          );
        }
      },
      (r) {},
    );
    if (state.status != EmailConfirmationStatus.error) {
      final profileRemoteInfo = await getProfileInfo(NoParams());
      profileRemoteInfo.fold(
        (l) => emit(
          EmailConfirmationState.emailConfirmation(
            status: EmailConfirmationStatus.error,
            error: mapFailureToMessage(l),
          ),
        ),
        (r) => emit(
          EmailConfirmationState.emailConfirmation(
            status: EmailConfirmationStatus.success,
            profile: r,
          ),
        ),
      );
    }
  }
}
