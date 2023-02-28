import 'package:dartz/dartz.dart';

import '../../../core/error/failure.dart';
import '../../entities/authentication/authentication/authentication.dart';
import '../../entities/authentication/confirm_token/confirm_token.dart';

abstract class AuthenticationRepository {
  Future<Either<Failure, ConfirmToken>> getConfirmToken({
    required String phoneNumber,
  });

  Future<Either<Failure, void>> confirmSmsCode({
    required String confirmCode,
  });

  Future<Either<Failure, Authentication>> authenticationRequest();

  Future<Either<Failure, void>> getAccessToken();

}
