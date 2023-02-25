import 'package:dartz/dartz.dart';

import '../../../core/error/failure.dart';
import '../../../core/usecases/usecases.dart';
import '../../entities/authentication/token_enum/token_enum.dart';
import '../../repositories/authentication/authentication_repository.dart';

class SaveTokenToLocal implements UseCase<void, SaveTokenParams> {
  final AuthenticationRepository repository;

  SaveTokenToLocal(
    this.repository,
  );

  @override
  Future<Either<Failure, void>> call(SaveTokenParams params) async {
    if (params.tokenType == TokenEnum.access) {
      return await repository.setLocalAccessToken(
        accessToken: params.token,
      );
    } else if (params.tokenType == TokenEnum.confirm) {
      return await repository.setLocalConfirmToken(
        confirmToken: params.token,
      );
    } else if (params.tokenType == TokenEnum.refresh) {
      return await repository.setLocalRefreshToken(
        refreshToken: params.token,
      );
    } else {
      return await repository.setLocalRefreshToken(
        refreshToken: params.token,
      );
    }
  }
}

class SaveTokenParams {
  final TokenEnum tokenType;
  final String token;

  SaveTokenParams({
    required this.tokenType,
    required this.token,
  });
}
