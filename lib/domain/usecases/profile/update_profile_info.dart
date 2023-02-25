import 'package:dartz/dartz.dart';

import '../../../core/error/failure.dart';
import '../../../core/response/response.dart';
import '../../../core/usecases/usecases.dart';
import '../../entities/profile/profile_info/enum/gender.dart';
import '../../repositories/profile/profile_repository.dart';

class UpdateProfileInfo implements UseCase<ServerSuccessEmptyResponse, Params> {
  final ProfileRepository repository;

  UpdateProfileInfo(
    this.repository,
  );

  @override
  Future<Either<Failure, ServerSuccessEmptyResponse>> call(
      Params params) async {
    return await repository.updateProfileInfo(
      name: params.name,
      surname: params.surname,
      birthday: params.birthday,
      gender: params.gender,
      userConfirm: params.userConfirm,
    );
  }
}

class Params {
  final String name;
  final String surname;
  final String birthday;
  final Gender gender;
  final bool? userConfirm;

  Params({
    required this.name,
    required this.surname,
    required this.birthday,
    required this.gender,
    this.userConfirm = false,
  });
}
