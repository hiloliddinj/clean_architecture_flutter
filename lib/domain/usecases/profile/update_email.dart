import 'package:dartz/dartz.dart';

import '../../../core/error/failure.dart';
import '../../../core/response/response.dart';
import '../../../core/usecases/usecases.dart';
import '../../repositories/profile/profile_repository.dart';

class UpdateEmail implements UseCase<ServerSuccessEmptyResponse, Params> {
  final ProfileRepository repository;

  UpdateEmail(
    this.repository,
  );

  @override
  Future<Either<Failure, ServerSuccessEmptyResponse>> call(
      Params params) async {
    return await repository.updateEmail(
      email: params.email,
    );
  }
}

class Params {
  final String email;

  Params({
    required this.email,
  });
}
