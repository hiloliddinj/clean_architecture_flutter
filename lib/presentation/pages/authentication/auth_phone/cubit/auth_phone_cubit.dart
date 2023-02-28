import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../domain/entities/authentication/confirm_token'
    '/confirm_token.dart';
import '../../../../../const/global_function.dart';
import '../../../../../domain/usecases/authentication'
    '/authentication_request.dart';
import '../../../../../domain/usecases/authentication/get_confirm_token.dart';

part 'auth_phone_state.dart';
part 'auth_phone_cubit.freezed.dart';

class AuthPhoneCubit extends Cubit<AuthPhoneState> {
  final GetConfirmToken getConfirmToken;
  final AuthenticationRequest authenticationRequest;

  AuthPhoneCubit({
    required this.getConfirmToken,
    required this.authenticationRequest,
  }) : super(
          const AuthPhoneState.nextButtonPressed(),
        );

  void nextButtonPressed({
    required String phoneNumber,
  }) async {
    emit(
      const _AuthPhoneState(status: AuthPhoneStatus.loading),
    );

    final confirmToken = await getConfirmToken(
      GetConfirmTokenParams(
        phoneNumber: phoneNumber,
      ),
    );

    confirmToken.fold(
      (l) => emit(
        AuthPhoneState.nextButtonPressed(
          status: AuthPhoneStatus.error,
          error: mapFailureToMessage(l),
        ),
      ),
      (r) async {
        emit(
          AuthPhoneState.nextButtonPressed(
            status: AuthPhoneStatus.success,
            confirmToken: r,
          ),
        );
      },
    );
  }
}
