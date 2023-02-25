import 'package:dartz/dartz.dart';

import '../../../core/error/failure.dart';
import '../../entities/authentication/access_token/access_token.dart';
import '../../entities/authentication/authentication/authentication.dart';
import '../../entities/authentication/confirm_code_response'
    '/confirm_code_response.dart';
import '../../entities/authentication/confirm_token/confirm_token.dart';

abstract class AuthenticationRepository {
  Future<Either<Failure, ConfirmToken>> getConfirmToken({
    required String phoneNumber,
  });

  Future<Either<Failure, ConfirmCodeResponse>> confirmSmsCode({
    required String confirmCode,
    required String confirmToken,
  });

  Future<Either<Failure, Authentication>> authenticationRequest({
    required String confirmToken,
  });

  Future<Either<Failure, AccessToken>> getAccessToken({
    required String refreshToken,
  });

  Future<Either<Failure, String>> getLocalAccessToken();

  Future<Either<Failure, String>> getLocalRefreshToken();

  Future<Either<Failure, String>> getLocalConfirmToken();

  Future<Either<Failure, void>> setLocalAccessToken({
    required String accessToken,
  });

  Future<Either<Failure, void>> setLocalRefreshToken({
    required String refreshToken,
  });

  Future<Either<Failure, void>> setLocalConfirmToken({
    required String confirmToken,
  });
}
