import 'package:dartz/dartz.dart';

import '../../../core/error/failure.dart';
import '../../../core/response/response.dart';
import '../../../core/usecases/usecases.dart';
import '../../repositories/profile/profile_repository.dart';

class ConfirmationEmailChange
    implements UseCase<ServerSuccessEmptyResponse, Params> {
  final ProfileRepository repository;

  ConfirmationEmailChange(
    this.repository,
  );

  @override
  Future<Either<Failure, ServerSuccessEmptyResponse>> call(
      Params params) async {
    return await repository.confirmationEmailChange(
      confirmCode: params.confirmCode,
    );
  }
}

class Params {
  final String confirmCode;

  Params({
    required this.confirmCode,
  });
}
