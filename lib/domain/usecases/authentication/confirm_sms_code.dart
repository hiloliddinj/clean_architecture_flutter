import 'package:dartz/dartz.dart';

import '../../../core/error/failure.dart';
import '../../../core/usecases/usecases.dart';
import '../../repositories/authentication/authentication_repository.dart';

class ConfirmSmsCode
    implements UseCase<void, ConfirmSmsCodeParams> {
  final AuthenticationRepository repository;

  ConfirmSmsCode(
    this.repository,
  );

  @override
  Future<Either<Failure, void>> call(
      ConfirmSmsCodeParams params) async {
    return await repository.confirmSmsCode(
      confirmCode: params.confirmCode,
    );
  }
}

class ConfirmSmsCodeParams {
  final String confirmCode;

  ConfirmSmsCodeParams({
    required this.confirmCode,
  });
}
