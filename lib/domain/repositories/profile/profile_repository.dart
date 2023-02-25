import 'dart:io';

import 'package:dartz/dartz.dart';

import '../../../core/error/failure.dart';
import '../../../core/response/response.dart';
import '../../entities/profile/profile_info/enum/gender.dart';
import '../../entities/profile/profile_info/profile.dart';

abstract class ProfileRepository {
  Future<Either<Failure, Profile>> getProfileInfo();

  Future<Either<Failure, ServerSuccessEmptyResponse>> updateProfileInfo({
    required String name,
    required String surname,
    required String birthday,
    required Gender gender,
    bool? userConfirm,
  });

  Future<Either<Failure, String>> updateProfileAvatar({
    File? avatarFile,
  });

  Future<Either<Failure, ServerSuccessEmptyResponse>> confirmationEmailChange({
    required String confirmCode,
  });

  Future<Either<Failure, ServerSuccessEmptyResponse>> updateEmail({
    required String email,
  });

  Future<Either<Failure, Profile>> getProfileLocalInfo();
}
