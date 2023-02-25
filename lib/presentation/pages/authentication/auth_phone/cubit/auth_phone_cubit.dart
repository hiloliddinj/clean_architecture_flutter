import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:giftbow_mobile/domain/usecases/authentication/authentication_request.dart';

import '../../../../../domain/entities/authentication/confirm_token'
    '/confirm_token.dart';
import '../../../../../const/global_function.dart';
import '../../../../../domain/entities/authentication/token_enum'
    '/token_enum.dart';
import '../../../../../domain/usecases/authentication/get_confirm_token.dart';
import '../../../../../domain/usecases/authentication/save_token_to_local.dart';

part 'auth_phone_state.dart';
part 'auth_phone_cubit.freezed.dart';

class AuthPhoneCubit extends Cubit<AuthPhoneState> {
  final GetConfirmToken getConfirmToken;
  final AuthenticationRequest authenticationRequest;
  final SaveTokenToLocal saveTokenToLocal;

  AuthPhoneCubit({
    required this.getConfirmToken,
    required this.saveTokenToLocal,
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
        await saveTokenToLocal(
          SaveTokenParams(
            tokenType: TokenEnum.confirm,
            token: r.confirmToken,
          ),
        );

        ///Request access and refresh token and save to local:
        final authentication = await authenticationRequest(
          Params(
            confirmToken: r.confirmToken,
          ),
        );
        authentication.fold(
          (l) => null,
          (r) async {
            await saveTokenToLocal(
              SaveTokenParams(
                tokenType: TokenEnum.access,
                token: r.accessToken,
              ),
            );
            await saveTokenToLocal(
              SaveTokenParams(
                tokenType: TokenEnum.refresh,
                token: r.refreshToken,
              ),
            );
          },
        );

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
