import 'package:dartz/dartz.dart';

import '../../../core/error/failure.dart';
import '../../../core/usecases/usecases.dart';
import '../../entities/authentication/authentication/authentication.dart';
import '../../repositories/authentication/authentication_repository.dart';

class AuthenticationRequest implements UseCase<Authentication, Params> {
  final AuthenticationRepository repository;

  AuthenticationRequest(
    this.repository,
  );

  @override
  Future<Either<Failure, Authentication>> call(Params params) async {
    return await repository.authenticationRequest();
  }
}

class Params {
  final String confirmToken;
  Params({
    required this.confirmToken,
  });
}
