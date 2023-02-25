import 'dart:io';

import 'package:dartz/dartz.dart';
import '../../../core/error/exeptions.dart';
import '../../../core/error/failure.dart';
import '../../../core/platform/network_info.dart';

import '../../../core/response/response.dart';
import '../../../domain/entities/profile/profile_info/enum/gender.dart';
import '../../../domain/entities/profile/profile_info/profile.dart';
import '../../../domain/repositories/profile/profile_repository.dart';
import '../../datasources/local_data_source/profile/profile_local_data_source.dart';
import '../../datasources/remote_data_source/profile/profile_remote_data_source.dart';

class ProfileRepositoryImpl extends ProfileRepository {
  final ProfileLocalDataSource profileLocalDataSource;
  final ProfileRemoteDataSource profileRemoveDataSource;
  final NetworkInfo networkInfo;

  ProfileRepositoryImpl({
    required this.profileLocalDataSource,
    required this.profileRemoveDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, Profile>> getProfileInfo() async {
    if (await networkInfo.isConnected) {
      try {
        final getProfileInfo = await profileRemoveDataSource.getProfileInfo();
        return Right(getProfileInfo);
      } on ServerException catch (e) {
        return Left(ServerFailure(e.cause));
      }
    } else {
      return Left(
        InternetFailure(),
      );
    }
  }

  @override
  Future<Either<Failure, ServerSuccessEmptyResponse>> updateProfileInfo({
    required String name,
    required String surname,
    required String birthday,
    required Gender gender,
    bool? userConfirm,
  }) async {
    if (await networkInfo.isConnected) {
      try {
        await profileRemoveDataSource.updateProfileInfo(
          name: name,
          surname: surname,
          birthday: birthday,
          gender: gender,
          userConfirm: userConfirm,
        );
        return Right(
          ServerSuccessEmptyResponse(),
        );
      } on ServerException catch (e) {
        return Left(
          ServerFailure(e.cause),
        );
      }
    } else {
      return Left(
        InternetFailure(),
      );
    }
  }

  @override
  Future<Either<Failure, String>> updateProfileAvatar({
    File? avatarFile,
  }) async {
    if (await networkInfo.isConnected) {
      try {
        final getNewUrlAvatarProfile =
            await profileRemoveDataSource.updateProfileAvatar(
          avatarFile: avatarFile,
        );
        return Right(getNewUrlAvatarProfile);
      } on ServerException catch (e) {
        return Left(ServerFailure(e.cause));
      }
    } else {
      return Left(
        InternetFailure(),
      );
    }
  }

  @override
  Future<Either<Failure, ServerSuccessEmptyResponse>> confirmationEmailChange({
    required String confirmCode,
  }) async {
    if (await networkInfo.isConnected) {
      try {
        await profileRemoveDataSource.confirmationEmailChange(
          confirmCode: confirmCode,
        );
        return Right(ServerSuccessEmptyResponse());
      } on ServerException catch (e) {
        return Left(ServerFailure(
          e.cause,
          code: e.code,
          data: e.data,
        ));
      }
    } else {
      return Left(
        InternetFailure(),
      );
    }
  }

  @override
  Future<Either<Failure, ServerSuccessEmptyResponse>> updateEmail({
    required String email,
  }) async {
    if (await networkInfo.isConnected) {
      try {
        await profileRemoveDataSource.updateEmail(
          email: email,
        );
        return Right(ServerSuccessEmptyResponse());
      } on ServerException catch (e) {
        return Left(ServerFailure(e.cause));
      }
    } else {
      return Left(
        InternetFailure(),
      );
    }
  }

  @override
  Future<Either<Failure, Profile>> getProfileLocalInfo() async {
    try {
      final getLocalInfo =
          await profileLocalDataSource.getProfileInfoFromCache();
      return Right(getLocalInfo);
    } on CacheException {
      return Left(
        CacheFailure(),
      );
    }
  }
}
