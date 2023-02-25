import 'package:dartz/dartz.dart';

import '../../../core/error/failure.dart';
import '../../../core/usecases/usecases.dart';
import '../../entities/authentication/token_enum/token_enum.dart';
import '../../repositories/authentication/authentication_repository.dart';

class GetTokenFromLocal implements UseCase<String, GetTokenParams> {
  final AuthenticationRepository repository;

  GetTokenFromLocal(
    this.repository,
  );

  @override
  Future<Either<Failure, String>> call(GetTokenParams params) async {
    if (params.tokenType == TokenEnum.access) {
      return await repository.getLocalAccessToken();
    } else if (params.tokenType == TokenEnum.confirm) {
      return await repository.getLocalConfirmToken();
    } else if (params.tokenType == TokenEnum.refresh) {
      return await repository.getLocalRefreshToken();
    } else {
      return await repository.getLocalRefreshToken();
    }
  }
}

class GetTokenParams {
  final TokenEnum tokenType;

  GetTokenParams({
    required this.tokenType,
  });
}
