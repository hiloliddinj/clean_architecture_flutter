import 'dart:io';
import 'package:dartz/dartz.dart';

import '../../../core/error/failure.dart';
import '../../../core/usecases/usecases.dart';
import '../../repositories/profile/profile_repository.dart';

class UpdateProfileAvatar implements UseCase<String, Params> {
  final ProfileRepository repository;

  UpdateProfileAvatar(
    this.repository,
  );

  @override
  Future<Either<Failure, String>> call(Params params) async {
    return await repository.updateProfileAvatar(
      avatarFile: params.avatarFile,
    );
  }
}

class Params {
  final File? avatarFile;

  Params({
    this.avatarFile,
  });
}
