import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../const/global_function.dart';
import '../../../../../domain/entities/authentication/confirm_token'
    '/confirm_token.dart';
import '../../../../../domain/usecases/authentication/confirm_sms_code.dart';
import '../../../../../domain/usecases/authentication/get_confirm_token.dart';

part 'auth_pin_state.dart';
part 'auth_pin_cubit.freezed.dart';

class AuthPinCubit extends Cubit<AuthPinState> {
  final ConfirmSmsCode confirmSmsCode;
  final GetConfirmToken getConfirmToken;

  int maxCheckCode = 0;

  AuthPinCubit({
    required this.confirmSmsCode,
    required this.getConfirmToken,
  }) : super(
          const AuthPinState.pinEnterCompleted(),
        );

  void setMaxCheckCode(
    int maxCheckCode,
  ) {
    this.maxCheckCode = maxCheckCode;
  }

  void pinEnterCompleted({
    required String confirmCode,
    required ConfirmToken confirmToken,
  }) async {
    emit(
      const _AuthPinState(
        status: AuthPinStatus.loading,
      ),
    );

    final confirmCodeResponse = await confirmSmsCode(
      ConfirmSmsCodeParams(
        confirmCode: confirmCode,
      ),
    );

    confirmCodeResponse.fold(
      (l) => emit(
        AuthPinState.pinEnterCompleted(
          status: AuthPinStatus.error,
          error: mapFailureToMessage(l),
        ),
      ),
      (r) => emit(
        const AuthPinState.pinEnterCompleted(
          status: AuthPinStatus.success,
        ),
      ),
    );
  }

  void getCodeAgain({
    required String phoneNumber,
  }) async {
    if (maxCheckCode == 0) {
      emit(
        const _AuthPinState(
          status: AuthPinStatus.maxCheckCodeFinished,
        ),
      );
      return;
    }
    maxCheckCode--;
    emit(
      const _AuthPinState(
        status: AuthPinStatus.loading,
      ),
    );

    final confirmToken = await getConfirmToken(
      GetConfirmTokenParams(
        phoneNumber: phoneNumber,
      ),
    );

    confirmToken.fold(
      (l) => emit(
        AuthPinState.pinEnterCompleted(
          status: AuthPinStatus.error,
          error: mapFailureToMessage(l),
        ),
      ),
      (r) async {
        emit(
          const AuthPinState.pinEnterCompleted(
            status: AuthPinStatus.sendCodeAgainSuccess,
          ),
        );
      },
    );
  }
}
