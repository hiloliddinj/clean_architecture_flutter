import 'package:dartz/dartz.dart';

import '../../../core/error/failure.dart';
import '../../../core/usecases/usecases.dart';
import '../../entities/authentication/confirm_code_response'
    '/confirm_code_response.dart';
import '../../repositories/authentication/authentication_repository.dart';

class ConfirmSmsCode
    implements UseCase<ConfirmCodeResponse, ConfirmSmsCodeParams> {
  final AuthenticationRepository repository;

  ConfirmSmsCode(
    this.repository,
  );

  @override
  Future<Either<Failure, ConfirmCodeResponse>> call(
      ConfirmSmsCodeParams params) async {
    return await repository.confirmSmsCode(
      confirmCode: params.confirmCode,
      confirmToken: params.confirmToken,
    );
  }
}

class ConfirmSmsCodeParams {
  final String confirmCode;
  final String confirmToken;

  ConfirmSmsCodeParams({
    required this.confirmCode,
    required this.confirmToken,
  });
}
