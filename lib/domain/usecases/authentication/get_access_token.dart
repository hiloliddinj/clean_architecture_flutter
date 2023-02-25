import 'package:dartz/dartz.dart';

import '../../../core/error/failure.dart';
import '../../../core/usecases/usecases.dart';
import '../../entities/authentication/access_token/access_token.dart';
import '../../repositories/authentication/authentication_repository.dart';

class GetAccessToken implements UseCase<AccessToken, Params> {
  final AuthenticationRepository repository;

  GetAccessToken(
    this.repository,
  );

  @override
  Future<Either<Failure, AccessToken>> call(Params params) async {
    return await repository.getAccessToken(
      refreshToken: params.refreshToken,
    );
  }
}

class Params {
  final String refreshToken;

  Params({
    required this.refreshToken,
  });
}
