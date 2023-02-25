import 'package:dartz/dartz.dart';

import '../../../core/error/failure.dart';
import '../../../core/usecases/usecases.dart';
import '../../entities/authentication/confirm_token/confirm_token.dart';
import '../../repositories/authentication/authentication_repository.dart';

class GetConfirmToken implements UseCase<ConfirmToken, GetConfirmTokenParams> {
  final AuthenticationRepository repository;

  GetConfirmToken(
    this.repository,
  );

  @override
  Future<Either<Failure, ConfirmToken>> call(
      GetConfirmTokenParams params) async {
    return await repository.getConfirmToken(
      phoneNumber: params.phoneNumber,
    );
  }
}

class GetConfirmTokenParams {
  final String phoneNumber;

  GetConfirmTokenParams({
    required this.phoneNumber,
  });
}
